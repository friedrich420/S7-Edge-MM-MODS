.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field private mDeviceBinding:Ljava/lang/String;

.field private mDeviceExpiryDate:Ljava/util/Date;

.field private mDeviceStartDate:Ljava/util/Date;

.field private mIssueNo:Ljava/lang/String;

.field private mManufacturer:Ljava/lang/String;

.field private mModel:Ljava/lang/String;

.field private mSerialNo:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceBinding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, mDeviceBinding:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, mDeviceExpiryDate:Ljava/util/Date;

    return-object v0
.end method

.method public getIssueNo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, mIssueNo:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, mManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, mModel:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, mSerialNo:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, mDeviceStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceBinding(Ljava/lang/String;)V
    .registers 2
    .param p1, "deviceBinding"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, mDeviceBinding:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setExpiryDate(Ljava/lang/String;)V
    .registers 6
    .param p1, "expiryDate"    # Ljava/lang/String;

    .prologue
    .line 102
    if-eqz p1, :cond_19

    .line 104
    :try_start_2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 106
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, mDeviceExpiryDate:Ljava/util/Date;
    :try_end_19
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_19} :catch_1a

    .line 111
    .end local v1    # "formatter":Ljava/text/SimpleDateFormat;
    :cond_19
    :goto_19
    return-void

    .line 107
    :catch_1a
    move-exception v0

    .line 108
    .local v0, "e":Ljava/text/ParseException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceInfo::setExpiryDate: ParseException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public setIssueNo(Ljava/lang/String;)V
    .registers 2
    .param p1, "issueNo"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, mIssueNo:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .registers 2
    .param p1, "manufacturer"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, mManufacturer:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .registers 2
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, mModel:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setSerialNo(Ljava/lang/String;)V
    .registers 2
    .param p1, "serialNo"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, mSerialNo:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setStartDate(Ljava/lang/String;)V
    .registers 6
    .param p1, "startDate"    # Ljava/lang/String;

    .prologue
    .line 79
    if-eqz p1, :cond_19

    .line 81
    :try_start_2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 83
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, mDeviceStartDate:Ljava/util/Date;
    :try_end_19
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_19} :catch_1a

    .line 88
    .end local v1    # "formatter":Ljava/text/SimpleDateFormat;
    :cond_19
    :goto_19
    return-void

    .line 84
    :catch_1a
    move-exception v0

    .line 85
    .local v0, "e":Ljava/text/ParseException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceInfo::setStartDate: ParseException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public setUserID(Ljava/lang/String;)V
    .registers 2
    .param p1, "userID"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, mUserId:Ljava/lang/String;

    .line 119
    return-void
.end method
