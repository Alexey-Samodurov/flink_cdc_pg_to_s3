{{
    config(
        pre_hook='drop table if exists {{ this }}'
  )

}}

select *,
       DATE_FORMAT(CreatedOn, 'yyyyMM') as `partition`
from {{ source('test', 'CommunicationDispatch') }}