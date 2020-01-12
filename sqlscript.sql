SELECT * FROM project.result1, project.train
where train.bidder_id = result1.bidder_id;

SELECT count(*) FROM project.train
where 
train.outcome =1;
SELECT count(*) FROM project.train
where 
train.outcome =0;



SELECT count(*) FROM project.bids,project.train
where project.train.bidder_id = bids.bidder_id and
train.outcome =1;
SELECT count(*) FROM project.result1,project.train
where project.train.bidder_id = result1.bidder_id and
train.outcome =0;
SELECT bid_id, bids.bidder_id,auction, merchandise,device, time,country,ip,url, payment_account,address,outcome FROM project.bids,project.train
where project.train.bidder_id = bids.bidder_id and
train.outcome =1
UNION
SELECT bid_id, train.bidder_id,auction, merchandise,device, time,country,ip,url, payment_account,address,outcome FROM project.result1,project.train
where project.train.bidder_id = result1.bidder_id and
train.outcome =0;

