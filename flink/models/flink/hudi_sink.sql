
select *,
       DATE_FORMAT(CreatedOn, 'yyyyMM') as `partition`
from {{ source('test', 'CommunicationDispatch') }}