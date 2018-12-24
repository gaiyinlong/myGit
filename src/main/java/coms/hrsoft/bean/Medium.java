package coms.hrsoft.bean;

import java.io.Serializable;

/**
 *
 */
public class Medium implements Serializable {

    private int mediumId;
    private String mediumName;
    private int creatorId;
    private String createDate;

    public int getMediumId() {
        return mediumId;
    }

    public void setMediumId(int mediumId) {
        this.mediumId = mediumId;
    }

    public String getName() {
        return mediumName;
    }

    public void setName(String mediumName) {
        this.mediumName = mediumName;
    }

    public int getCreatorId() {
        return creatorId;
    }

    public void setCreatorId(int creatorId) {
        this.creatorId = creatorId;
    }

    public String getCreatDate() {
        return createDate;
    }

    public void setCreatDate(String creatDate) {
        this.createDate = creatDate;
    }
}
