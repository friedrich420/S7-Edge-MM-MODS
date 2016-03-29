.class public Lcom/android/settings/net/DataUsageAppRestrict$AppItem;
.super Ljava/lang/Object;
.source "DataUsageAppRestrict.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/net/DataUsageAppRestrict;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/net/DataUsageAppRestrict$AppItem;",
        ">;"
    }
.end annotation


# instance fields
.field public dataTotal:J

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mLabel:Ljava/lang/CharSequence;

.field public mPackageName:Ljava/lang/String;

.field public final uid:I

.field public wifiTotal:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->uid:I

    .line 689
    iput-wide v2, p0, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->dataTotal:J

    .line 690
    iput-wide v2, p0, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->wifiTotal:J

    .line 691
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    iput p1, p0, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->uid:I

    .line 695
    iput-object p2, p0, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 696
    iput-object p3, p0, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->mLabel:Ljava/lang/CharSequence;

    .line 697
    iput-object p4, p0, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->mPackageName:Ljava/lang/String;

    .line 698
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/net/DataUsageAppRestrict$AppItem;)I
    .locals 3
    .param p1, "another"    # Lcom/android/settings/net/DataUsageAppRestrict$AppItem;

    .prologue
    .line 703
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 705
    .local v0, "comparison":I
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 678
    check-cast p1, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->compareTo(Lcom/android/settings/net/DataUsageAppRestrict$AppItem;)I

    move-result v0

    return v0
.end method
