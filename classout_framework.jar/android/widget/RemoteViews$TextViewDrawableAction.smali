.class Landroid/widget/RemoteViews$TextViewDrawableAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextViewDrawableAction"
.end annotation


# static fields
.field public static final TAG:I = 0xb


# instance fields
.field d1:I

.field d2:I

.field d3:I

.field d4:I

.field i1:Landroid/graphics/drawable/Icon;

.field i2:Landroid/graphics/drawable/Icon;

.field i3:Landroid/graphics/drawable/Icon;

.field i4:Landroid/graphics/drawable/Icon;

.field isRelative:Z

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field useIcons:Z


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IZIIII)V
    .registers 10
    .param p2, "viewId"    # I
    .param p3, "isRelative"    # Z
    .param p4, "d1"    # I
    .param p5, "d2"    # I
    .param p6, "d3"    # I
    .param p7, "d4"    # I

    .prologue
    const/4 v1, 0x0

    .line 1569
    iput-object p1, p0, this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1681
    iput-boolean v1, p0, isRelative:Z

    .line 1682
    iput-boolean v1, p0, useIcons:Z

    .line 1570
    iput p2, p0, viewId:I

    .line 1571
    iput-boolean p3, p0, isRelative:Z

    .line 1572
    iput-boolean v1, p0, useIcons:Z

    .line 1573
    iput p4, p0, d1:I

    .line 1574
    iput p5, p0, d2:I

    .line 1575
    iput p6, p0, d3:I

    .line 1576
    iput p7, p0, d4:I

    .line 1577
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .registers 10
    .param p2, "viewId"    # I
    .param p3, "isRelative"    # Z
    .param p4, "i1"    # Landroid/graphics/drawable/Icon;
    .param p5, "i2"    # Landroid/graphics/drawable/Icon;
    .param p6, "i3"    # Landroid/graphics/drawable/Icon;
    .param p7, "i4"    # Landroid/graphics/drawable/Icon;

    .prologue
    const/4 v1, 0x0

    .line 1580
    iput-object p1, p0, this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1681
    iput-boolean v1, p0, isRelative:Z

    .line 1682
    iput-boolean v1, p0, useIcons:Z

    .line 1581
    iput p2, p0, viewId:I

    .line 1582
    iput-boolean p3, p0, isRelative:Z

    .line 1583
    const/4 v0, 0x1

    iput-boolean v0, p0, useIcons:Z

    .line 1584
    iput-object p4, p0, i1:Landroid/graphics/drawable/Icon;

    .line 1585
    iput-object p5, p0, i2:Landroid/graphics/drawable/Icon;

    .line 1586
    iput-object p6, p0, i3:Landroid/graphics/drawable/Icon;

    .line 1587
    iput-object p7, p0, i4:Landroid/graphics/drawable/Icon;

    .line 1588
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 6
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1590
    iput-object p1, p0, this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1681
    iput-boolean v2, p0, isRelative:Z

    .line 1682
    iput-boolean v2, p0, useIcons:Z

    .line 1591
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, viewId:I

    .line 1592
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_68

    move v0, v1

    :goto_19
    iput-boolean v0, p0, isRelative:Z

    .line 1593
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6a

    :goto_21
    iput-boolean v1, p0, useIcons:Z

    .line 1594
    iget-boolean v0, p0, useIcons:Z

    if-eqz v0, :cond_6c

    .line 1595
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_37

    .line 1596
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, i1:Landroid/graphics/drawable/Icon;

    .line 1598
    :cond_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_47

    .line 1599
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, i2:Landroid/graphics/drawable/Icon;

    .line 1601
    :cond_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_57

    .line 1602
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, i3:Landroid/graphics/drawable/Icon;

    .line 1604
    :cond_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_67

    .line 1605
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, i4:Landroid/graphics/drawable/Icon;

    .line 1613
    :cond_67
    :goto_67
    return-void

    :cond_68
    move v0, v2

    .line 1592
    goto :goto_19

    :cond_6a
    move v1, v2

    .line 1593
    goto :goto_21

    .line 1608
    :cond_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, d1:I

    .line 1609
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, d2:I

    .line 1610
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, d3:I

    .line 1611
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, d4:I

    goto :goto_67
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 14
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    const/4 v6, 0x0

    .line 1655
    iget v7, p0, viewId:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1656
    .local v5, "target":Landroid/widget/TextView;
    if-nez v5, :cond_c

    .line 1675
    :goto_b
    return-void

    .line 1657
    :cond_c
    iget-boolean v7, p0, useIcons:Z

    if-eqz v7, :cond_50

    .line 1658
    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1659
    .local v0, "ctx":Landroid/content/Context;
    iget-object v7, p0, i1:Landroid/graphics/drawable/Icon;

    if-nez v7, :cond_30

    move-object v1, v6

    .line 1660
    .local v1, "id1":Landroid/graphics/drawable/Drawable;
    :goto_19
    iget-object v7, p0, i2:Landroid/graphics/drawable/Icon;

    if-nez v7, :cond_37

    move-object v2, v6

    .line 1661
    .local v2, "id2":Landroid/graphics/drawable/Drawable;
    :goto_1e
    iget-object v7, p0, i3:Landroid/graphics/drawable/Icon;

    if-nez v7, :cond_3e

    move-object v3, v6

    .line 1662
    .local v3, "id3":Landroid/graphics/drawable/Drawable;
    :goto_23
    iget-object v7, p0, i4:Landroid/graphics/drawable/Icon;

    if-nez v7, :cond_45

    move-object v4, v6

    .line 1663
    .local v4, "id4":Landroid/graphics/drawable/Drawable;
    :goto_28
    iget-boolean v6, p0, isRelative:Z

    if-eqz v6, :cond_4c

    .line 1664
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    .line 1659
    .end local v1    # "id1":Landroid/graphics/drawable/Drawable;
    .end local v2    # "id2":Landroid/graphics/drawable/Drawable;
    .end local v3    # "id3":Landroid/graphics/drawable/Drawable;
    .end local v4    # "id4":Landroid/graphics/drawable/Drawable;
    :cond_30
    iget-object v7, p0, i1:Landroid/graphics/drawable/Icon;

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_19

    .line 1660
    .restart local v1    # "id1":Landroid/graphics/drawable/Drawable;
    :cond_37
    iget-object v7, p0, i2:Landroid/graphics/drawable/Icon;

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1e

    .line 1661
    .restart local v2    # "id2":Landroid/graphics/drawable/Drawable;
    :cond_3e
    iget-object v7, p0, i3:Landroid/graphics/drawable/Icon;

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_23

    .line 1662
    .restart local v3    # "id3":Landroid/graphics/drawable/Drawable;
    :cond_45
    iget-object v6, p0, i4:Landroid/graphics/drawable/Icon;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_28

    .line 1666
    .restart local v4    # "id4":Landroid/graphics/drawable/Drawable;
    :cond_4c
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    .line 1669
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v1    # "id1":Landroid/graphics/drawable/Drawable;
    .end local v2    # "id2":Landroid/graphics/drawable/Drawable;
    .end local v3    # "id3":Landroid/graphics/drawable/Drawable;
    .end local v4    # "id4":Landroid/graphics/drawable/Drawable;
    :cond_50
    iget-boolean v6, p0, isRelative:Z

    if-eqz v6, :cond_60

    .line 1670
    iget v6, p0, d1:I

    iget v7, p0, d2:I

    iget v8, p0, d3:I

    iget v9, p0, d4:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_b

    .line 1672
    :cond_60
    iget v6, p0, d1:I

    iget v7, p0, d2:I

    iget v8, p0, d3:I

    iget v9, p0, d4:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_b
.end method

.method public getActionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1678
    const-string v0, "TextViewDrawableAction"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1616
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1617
    iget v0, p0, viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1618
    iget-boolean v0, p0, isRelative:Z

    if-eqz v0, :cond_51

    move v0, v1

    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1619
    iget-boolean v0, p0, useIcons:Z

    if-eqz v0, :cond_53

    move v0, v1

    :goto_19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1620
    iget-boolean v0, p0, useIcons:Z

    if-eqz v0, :cond_65

    .line 1621
    iget-object v0, p0, i1:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_55

    .line 1622
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1623
    iget-object v0, p0, i1:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1627
    :goto_2c
    iget-object v0, p0, i2:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_59

    .line 1628
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1629
    iget-object v0, p0, i2:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1633
    :goto_38
    iget-object v0, p0, i3:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_5d

    .line 1634
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1635
    iget-object v0, p0, i3:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1639
    :goto_44
    iget-object v0, p0, i4:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_61

    .line 1640
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1641
    iget-object v0, p0, i4:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1651
    :goto_50
    return-void

    :cond_51
    move v0, v2

    .line 1618
    goto :goto_11

    :cond_53
    move v0, v2

    .line 1619
    goto :goto_19

    .line 1625
    :cond_55
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c

    .line 1631
    :cond_59
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_38

    .line 1637
    :cond_5d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_44

    .line 1643
    :cond_61
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_50

    .line 1646
    :cond_65
    iget v0, p0, d1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1647
    iget v0, p0, d2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1648
    iget v0, p0, d3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1649
    iget v0, p0, d4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_50
.end method
