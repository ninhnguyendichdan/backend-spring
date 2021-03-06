package com.vietis.carpark.entity;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the park_service database table.
 * 
 */
@Embeddable
public class ParkServicePK implements Serializable {
	private static final long serialVersionUID = 1L;

	@Column(name="park_id")
	private Long parkId;

	@Column(name="service_id")
	private Long serviceId;

	public ParkServicePK() {
	}

	public Long getParkId() {
		return this.parkId;
	}

	public void setParkId(Long parkId) {
		this.parkId = parkId;
	}

	public Long getServiceId() {
		return this.serviceId;
	}

	public void setServiceId(Long serviceId) {
		this.serviceId = serviceId;
	}

}