CREATE TABLE state(
					state_name varchar not null,
					state_id varchar not null,
					primary key(state_id)
);

CREATE TABLE yearly_generation(
							id int,
							years INT,
							state_id varchar,
							producer_type varchar,
							engery_source varchar,
							generation float
							);
							
CREATE TABLE yearly_capacity(
							state_id varchar,
							years INT,
							producer varchar,
							engery_source varchar,
							generators int,
							facilities int,
							nameplate_capacity float,
							summer_capacity float					
);
	













;