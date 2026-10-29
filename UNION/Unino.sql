SELECT * FROM group_members m  RIGHT OUTER JOIN users u ON m.membership_id= u.user_id  
UNION
SELECT * FROM group_members m  LEFT OUTER JOIN users u ON m.membership_id= u.user_id  
