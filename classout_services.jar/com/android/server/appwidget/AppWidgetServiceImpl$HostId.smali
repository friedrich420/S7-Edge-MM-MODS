.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HostId"
.end annotation


# instance fields
.field final hostId:I

.field final packageName:Ljava/lang/String;

.field final uid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "hostId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3963
    iput p1, p0, uid:I

    .line 3964
    iput p2, p0, hostId:I

    .line 3965
    iput-object p3, p0, packageName:Ljava/lang/String;

    .line 3966
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3970
    if-ne p0, p1, :cond_5

    .line 3993
    :cond_4
    :goto_4
    return v1

    .line 3973
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 3974
    goto :goto_4

    .line 3976
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 3977
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 3979
    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 3980
    .local v0, "other":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    iget v3, p0, uid:I

    iget v4, v0, uid:I

    if-eq v3, v4, :cond_20

    move v1, v2

    .line 3981
    goto :goto_4

    .line 3983
    :cond_20
    iget v3, p0, hostId:I

    iget v4, v0, hostId:I

    if-eq v3, v4, :cond_28

    move v1, v2

    .line 3984
    goto :goto_4

    .line 3986
    :cond_28
    iget-object v3, p0, packageName:Ljava/lang/String;

    if-nez v3, :cond_32

    .line 3987
    iget-object v3, v0, packageName:Ljava/lang/String;

    if-eqz v3, :cond_4

    move v1, v2

    .line 3988
    goto :goto_4

    .line 3990
    :cond_32
    iget-object v3, p0, packageName:Ljava/lang/String;

    iget-object v4, v0, packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 3991
    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 3998
    iget v0, p0, uid:I

    .line 3999
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, hostId:I

    add-int v0, v1, v2

    .line 4000
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, packageName:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, p0, packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_14
    add-int v0, v2, v1

    .line 4002
    return v0

    .line 4000
    :cond_17
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 4007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HostId{user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", app:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hostId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, hostId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
