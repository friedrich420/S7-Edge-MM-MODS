.class Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;
.super Landroid/os/FileObserver;
.source "PowerResetNotiParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SLPIResetObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    iput-object p1, p0, this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    .line 162
    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    .line 163
    iput-object p3, p0, mContext:Landroid/content/Context;

    .line 164
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 11
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 168
    iget-object v4, p0, this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    # invokes: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->isSLPISupported()Z
    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 169
    and-int/lit8 v4, p1, 0x2

    if-ne v4, v6, :cond_74

    .line 170
    iget-object v4, p0, this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    const-string v5, "/sys/class/sensors/ssc_core/operation_mode"

    # invokes: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->getFileData(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "data":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CTS status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 172
    iget-object v4, p0, this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mLastStatus:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->access$200(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_ab

    .line 173
    const/4 v3, -0x1

    .line 174
    .local v3, "temp":I
    const-string/jumbo v4, "normal"

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_75

    .line 175
    const-string v4, "SLPI status : SLPI_RESTORE_STATUS"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 176
    const/4 v3, 0x1

    .line 177
    invoke-static {v3, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    .line 178
    .local v2, "status":[B
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v4

    new-array v5, v6, [B

    fill-array-data v5, :array_b2

    invoke-virtual {v4, v2, v5}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v1

    .line 181
    .local v1, "result":I
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    if-eq v1, v4, :cond_68

    .line 182
    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 184
    :cond_68
    iget-object v4, p0, this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    const/16 v5, -0x2b

    invoke-virtual {v4, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->notifySensorHubResetObserver(I)V

    .line 203
    :cond_6f
    :goto_6f
    iget-object v4, p0, this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    # setter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mLastStatus:Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->access$202(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "result":I
    .end local v2    # "status":[B
    .end local v3    # "temp":I
    :cond_74
    :goto_74
    return-void

    .line 185
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v3    # "temp":I
    :cond_75
    const-string/jumbo v4, "restrict"

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_a5

    .line 186
    const-string v4, "SLPI status : SLPI_RESET_STATUS"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 187
    const/4 v3, 0x0

    .line 188
    invoke-static {v3, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    .line 189
    .restart local v2    # "status":[B
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v4

    new-array v5, v6, [B

    fill-array-data v5, :array_b8

    invoke-virtual {v4, v2, v5}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v1

    .line 192
    .restart local v1    # "result":I
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    if-eq v1, v4, :cond_6f

    .line 193
    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_6f

    .line 196
    .end local v1    # "result":I
    .end local v2    # "status":[B
    :cond_a5
    const-string v4, "Status of SLPI is invalid"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_74

    .line 200
    .end local v3    # "temp":I
    :cond_ab
    const-string v4, "Status of SLPI is same so skip event!!"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_74

    .line 178
    nop

    :array_b2
    .array-data 1
        -0x3ft
        0x63t
    .end array-data

    .line 189
    nop

    :array_b8
    .array-data 1
        -0x3ft
        0x63t
    .end array-data
.end method
