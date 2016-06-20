# IronTitan::Job

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**image** | **String** | Name of Docker image to use. This is optional and can be used to override the image defined at the group level. | 
**payload** | **String** | Payload for the job. This is what you pass into each job to make it do something. | [optional] 
**delay** | **Integer** | Number of seconds to wait before queueing the job for consumption for the first time. Must be a positive integer. Jobs with a delay start in state \&quot;delayed\&quot; and transition to \&quot;running\&quot; after delay seconds. | [optional] [default to 0]
**timeout** | **Integer** | Maximum runtime in seconds. If a consumer retrieves the job, but does not change it&#39;s status within timeout seconds, the job is considered failed, with reason timeout (Titan may allow a small grace period). The consumer should also kill the job after timeout seconds. If a consumer tries to change status after Titan has already timed out the job, the consumer will be ignored.  | [optional] [default to 60]
**priority** | **Integer** | Priority of the job. Higher has more priority. 3 levels from 0-2. Jobs at same priority are processed in FIFO order. | 
**max_retries** | **Integer** | \&quot;Number of automatic retries this job is allowed. A retry will be attempted if a task fails. Max 25. Automatic retries are performed by titan when a task reaches a failed state and has &#x60;max_retries&#x60; &gt; 0. A retry is performed by queueing a new job with the same image id and payload. The new job&#39;s max_retries is one less than the original. The new job&#39;s &#x60;retry_of&#x60; field is set to the original Job ID.  Titan will delay the new job for retries_delay seconds before queueing it. Cancelled or successful tasks are never automatically retried.\&quot;  | [optional] [default to 0]
**retries_delay** | **Integer** | Time in seconds to wait before retrying the job. Must be a non-negative integer. | [optional] [default to 60]
**id** | **String** | Unique identifier representing a specific job. | [optional] 
**status** | **String** | States and valid transitions.                   +---------+        +---------&gt; delayed &lt;----------------+                  +----+----+                |                       |                     |                       |                     |                  +----v----+                |        +---------&gt; queued  &lt;----------------+                  +----+----+                *                       |                     *                       |               retry * creates new job                  +----v----+                *                  | running |                *                  +--+-+-+--+                |           +---------|-|-|-----+-------------+       +---|---------+ | +-----|---------+   |       |   |           |       |         |   | +-----v---^-+      +--v-------^+     +--v---^-+ | success   |      | cancelled |     |  error | +-----------+      +-----------+     +--------+  * delayed - has a delay. * queued - Ready to be consumed when it&#39;s turn comes. * running - Currently consumed by a runner which will attempt to process it. * success - (or complete? success/error is common javascript terminology) * error - Something went wrong. In this case more information can be obtained   by inspecting the \&quot;reason\&quot; field.   - timeout   - killed - forcibly killed by worker due to resource restrictions or access     violations.   - bad_exit - exited with non-zero status due to program termination/crash. * cancelled - cancelled via API. More information in the reason field.   - client_request - Request was cancelled by a client.  | [optional] 
**group_name** | **String** | Group this job belongs to. | [optional] 
**error** | **String** | The error message, if status is &#39;error&#39;. This is errors due to things outside the job itself. Errors from user code will be found in the log. | [optional] 
**reason** | **String** | Machine usable reason for job being in this state. Valid values for error status are &#x60;timeout | killed | bad_exit&#x60;. Valid values for cancelled status are &#x60;client_request&#x60;. For everything else, this is undefined.  | [optional] 
**created_at** | **DateTime** | Time when job was submitted. Always in UTC. | [optional] 
**started_at** | **DateTime** | Time when job started execution. Always in UTC. | [optional] 
**completed_at** | **DateTime** | Time when job completed, whether it was successul or failed. Always in UTC. | [optional] 
**retry_of** | **String** | If this field is set, then this job is a retry of the ID in this field. | [optional] 
**retry_at** | **String** | If this field is set, then this job was retried by the job referenced in this field. | [optional] 
**env_vars** | **Hash&lt;String, String&gt;** | Env vars for the task. Comes from the ones set on the Group. | [optional] 


