package com.sample.web.view;

import java.util.List;

public class Mate {
    private int id;
    private Performance performance;
    private String seatGroup;
    private String category;
    private int groupsize;
    private int groupCnt;
    private String seatRate;
    private String status;
    private List<User> mateMembers;
    private List<MateTag> mateTags;
    private int categoryId;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Performance getPerformance() {
		return performance;
	}

	public void setPerformance(Performance performance) {
		this.performance = performance;
	}

	public String getSeatGroup() {
        return seatGroup;
    }

    public void setSeatGroup(String seatGroup) {
        this.seatGroup = seatGroup;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getGroupsize() {
        return groupsize;
    }

    public void setGroupsize(int groupsize) {
        this.groupsize = groupsize;
    }

    public String getSeatRate() {
        return seatRate;
    }

    public void setSeatRate(String seatRate) {
        this.seatRate = seatRate;
    }

    public List<User> getMateMembers() {
        return mateMembers;
    }

    public void setMateMembers(List<User> mateMembers) {
        this.mateMembers = mateMembers;
    }

	public List<MateTag> getMateTags() {
		return mateTags;
	}

	public void setMateTags(List<MateTag> mateTags) {
		this.mateTags = mateTags;
	}
	
	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}


	public int getGroupCnt() {
		return groupCnt;
	}

	public void setGroupCnt(int groupCnt) {
		this.groupCnt = groupCnt;
	}
	

	@Override
	public String toString() {
		return "Mate [id=" + id + ", performance=" + performance + ", seatGroup=" + seatGroup + ", category=" + category
				+ ", groupsize=" + groupsize + ", groupCnt=" + groupCnt + ", seatRate=" + seatRate + ", status="
				+ status + ", mateMembers=" + mateMembers + ", mateTags=" + mateTags + ", categoryId=" + categoryId
				+ "]";
	}

	

   
    
}   