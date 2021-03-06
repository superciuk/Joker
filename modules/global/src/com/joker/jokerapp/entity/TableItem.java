package com.joker.jokerapp.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;
import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.cuba.core.entity.annotation.OnDeleteInverse;

@NamePattern("%s|tableNumber")
@Table(name = "JOKERAPP_TABLE_ITEM")
@Entity(name = "jokerapp$TableItem")
public class TableItem extends StandardEntity {
    private static final long serialVersionUID = -4769521418786074068L;

    @NotNull
    @Column(name = "TABLE_NUMBER", nullable = false, unique = true)
    protected Integer tableNumber;

    @Column(name = "TABLE_CAPTION")
    protected String tableCaption;

    @Column(name = "SEATS_CAPACITY")
    protected Integer seatsCapacity;

    @NotNull
    @Column(name = "TABLE_STATUS", nullable = false)
    protected String tableStatus;

    @Composition
    @OnDeleteInverse(DeletePolicy.UNLINK)
    @OnDelete(DeletePolicy.DENY)
    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CURRENT_ORDER_ID", unique = true)
    protected Order currentOrder;

    @NotNull
    @Column(name = "WITH_SERVICE_BY_DEFAULT", nullable = false)
    protected Boolean withServiceByDefault = false;

    @NotNull
    @Column(name = "CHECKED", nullable = false)
    protected Boolean checked = false;

    public void setChecked(Boolean checked) {
        this.checked = checked;
    }

    public Boolean getChecked() {
        return checked;
    }

    public void setTableCaption(String tableCaption) {
        this.tableCaption = tableCaption;
    }

    public String getTableCaption() {
        return tableCaption;
    }

    public Integer getTableNumber() {
        return tableNumber;
    }

    public void setTableNumber(Integer tableNumber) {
        this.tableNumber = tableNumber;
    }

    public void setWithServiceByDefault(Boolean withServiceByDefault) {
        this.withServiceByDefault = withServiceByDefault;
    }

    public Boolean getWithServiceByDefault() {
        return withServiceByDefault;
    }

    public void setCurrentOrder(Order currentOrder) {
        this.currentOrder = currentOrder;
    }

    public Order getCurrentOrder() {
        return currentOrder;
    }

    public void setTableStatus(TableItemStatus tableStatus) {
        this.tableStatus = tableStatus == null ? null : tableStatus.getId();
    }

    public TableItemStatus getTableStatus() {
        return tableStatus == null ? null : TableItemStatus.fromId(tableStatus);
    }

    public void setSeatsCapacity(Integer seatsCapacity) {
        this.seatsCapacity = seatsCapacity;
    }

    public Integer getSeatsCapacity() {
        return seatsCapacity;
    }

}