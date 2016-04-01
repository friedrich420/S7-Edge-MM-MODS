.class public abstract Lcom/samsung/android/contextaware/manager/ContextProvider;
.super Lcom/samsung/android/contextaware/manager/ContextComponent;
.source "ContextProvider.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/IApPowerObserver;
.implements Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
.implements Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;


# instance fields
.field private mApStatus:I

.field private final mContext:Landroid/content/Context;

.field private final mLooper:Landroid/os/Looper;

.field private mPreparedCollection:I

.field private final mSensorHubResetObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

.field private final mTimeOutCheck:Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;

.field private mTimeStampForApStatus:J

.field private mVersion:I


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 7
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;-><init>()V

    .line 82
    iput p1, p0, mVersion:I

    .line 83
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 84
    iput-object p3, p0, mLooper:Landroid/os/Looper;

    .line 85
    iput-object p4, p0, mSensorHubResetObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 86
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextTimeOutCheck;

    invoke-virtual {p0}, getTimeOutCheckObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextTimeOutCheck;-><init>(Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;)V

    iput-object v0, p0, mTimeOutCheck:Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;

    .line 87
    return-void
.end method


# virtual methods
.method protected checkFaultDetectionResult()Z
    .registers 2

    .prologue
    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method public abstract disable()V
.end method

.method protected disableForRestore()V
    .registers 1

    .prologue
    .line 116
    invoke-virtual {p0}, disable()V

    .line 117
    return-void
.end method

.method protected disableForStop(I)V
    .registers 3
    .param p1, "operation"    # I

    .prologue
    .line 197
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 198
    invoke-virtual {p0}, disableForRestore()V

    .line 202
    :goto_6
    return-void

    .line 200
    :cond_7
    invoke-virtual {p0}, disable()V

    goto :goto_6
.end method

.method protected display()V
    .registers 7

    .prologue
    .line 370
    invoke-virtual {p0}, getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->getContextBundleForDisplay()Landroid/os/Bundle;

    move-result-object v0

    .line 371
    .local v0, "context":Landroid/os/Bundle;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 392
    :cond_10
    :goto_10
    return-void

    .line 375
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "================= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, getContextType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ================="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 378
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 380
    .local v3, "str":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 381
    .local v1, "i":Ljava/lang/String;
    if-eqz v1, :cond_52

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 387
    .end local v1    # "i":Ljava/lang/String;
    :cond_52
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_67

    .line 388
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 391
    :cond_67
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_10

    .line 384
    .restart local v1    # "i":Ljava/lang/String;
    :cond_6f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0, v1}, getDisplayContents(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3e
.end method

.method protected doTimeOutChecking(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 267
    if-nez p2, :cond_10

    .line 268
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BUNDLE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 282
    :goto_f
    return-void

    .line 271
    :cond_10
    const-string v0, "CheckResult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    .line 272
    invoke-virtual {p0}, clear()V

    .line 273
    iget-object v0, p0, mTimeOutCheck:Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;

    invoke-interface {v0}, Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;->run()V

    goto :goto_f

    .line 275
    :cond_21
    const-string v0, "FAULT_DETECTION result is not success"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, getContextTypeOfFaultDetection()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "Cause"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_f
.end method

.method public abstract enable()V
.end method

.method protected enableForRestore()V
    .registers 1

    .prologue
    .line 109
    invoke-virtual {p0}, enable()V

    .line 110
    return-void
.end method

.method protected enableForStart(I)V
    .registers 3
    .param p1, "operation"    # I

    .prologue
    .line 181
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 182
    invoke-virtual {p0}, enableForRestore()V

    .line 186
    :goto_6
    return-void

    .line 184
    :cond_7
    invoke-virtual {p0}, enable()V

    goto :goto_6
.end method

.method public final getAPStatus()I
    .registers 2

    .prologue
    .line 664
    iget v0, p0, mApStatus:I

    return v0
.end method

.method protected final getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 692
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V
    .registers 11
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .prologue
    const/4 v8, 0x1

    .line 213
    invoke-virtual {p0}, getDependentService()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "dependentService":Ljava/lang/String;
    iget-object v6, p0, mTimeOutCheck:Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;->setTimeOutOccurence(Z)V

    .line 217
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 218
    :cond_13
    sget-object v6, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_DEPENDENT_SERVICE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, getContextTypeOfFaultDetection()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_DEPENDENT_SERVICE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v8, v7}, getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 255
    :goto_2d
    return-void

    .line 229
    :cond_2e
    const/4 v1, 0x0

    .line 231
    .local v1, "isRegisterDependentService":Z
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 232
    .local v5, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 233
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    move-object v3, v2

    .local v3, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 234
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 235
    .local v4, "service":I
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 236
    const/4 v1, 0x1

    .line 241
    .end local v4    # "service":I
    :cond_5b
    if-nez v1, :cond_78

    .line 242
    sget-object v6, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_DEPENDENT_SERVICE_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, getContextTypeOfFaultDetection()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_DEPENDENT_SERVICE_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v8, v7}, getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2d

    .line 253
    :cond_78
    invoke-virtual {p0}, enable()V

    .line 254
    invoke-virtual {p0}, getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, doTimeOutChecking(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Landroid/os/Bundle;)V

    goto :goto_2d
.end method

.method public final getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;
    .registers 1

    .prologue
    .line 608
    return-object p0
.end method

.method public final getContextTypeOfFaultDetection()Ljava/lang/String;
    .registers 2

    .prologue
    .line 580
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getContextValueNames()[Ljava/lang/String;
.end method

.method protected getDependentService()Ljava/lang/String;
    .registers 2

    .prologue
    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDisplayContents(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 404
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 405
    :cond_9
    const-string v8, "key is null"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move-object v6, v7

    .line 433
    :cond_f
    :goto_f
    return-object v6

    .line 409
    :cond_10
    if-eqz p1, :cond_18

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1f

    .line 410
    :cond_18
    const-string v8, "bundle is null"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move-object v6, v7

    .line 411
    goto :goto_f

    .line 414
    :cond_1f
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 415
    .local v4, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, [Ljava/lang/String;

    if-eqz v8, :cond_6a

    .line 416
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 417
    .local v5, "strArray":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_33
    if-ge v1, v3, :cond_50

    aget-object v2, v0, v1

    .line 418
    .local v2, "j":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 420
    .end local v2    # "j":Ljava/lang/String;
    :cond_50
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_65

    .line 421
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 433
    :cond_65
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_f

    .line 424
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "strArray":[Ljava/lang/String;
    :cond_6a
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 425
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_76

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 426
    :cond_76
    const-string v8, "bundle.getStringArray(key) is null"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move-object v6, v7

    .line 427
    goto :goto_f
.end method

.method public abstract getFaultDetectionResult()Landroid/os/Bundle;
.end method

.method protected final getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;
    .registers 8
    .param p1, "result"    # I
    .param p2, "cause"    # Ljava/lang/String;

    .prologue
    .line 645
    invoke-virtual {p0}, getFaultDetectionResultValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "names":[Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 648
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v3

    invoke-virtual {p0}, getContextType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/contextaware/ContextList;->getServiceOrdinal(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 652
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 653
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    return-object v0
.end method

.method public final getFaultDetectionResultValueNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 589
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Service"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CheckResult"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Cause"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 701
    iget-object v0, p0, mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method protected abstract getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
.end method

.method protected abstract getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
.end method

.method protected getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .registers 2

    .prologue
    .line 729
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getTimeOutCheckManager()Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, mTimeOutCheck:Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;

    return-object v0
.end method

.method protected getTimeOutCheckObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;
    .registers 2

    .prologue
    .line 308
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTimeStampForApStatus()J
    .registers 3

    .prologue
    .line 673
    iget-wide v0, p0, mTimeStampForApStatus:J

    return-wide v0
.end method

.method protected final getVersion()I
    .registers 2

    .prologue
    .line 720
    iget v0, p0, mVersion:I

    return v0
.end method

.method public final initializePreparedSubCollection()V
    .registers 2

    .prologue
    .line 571
    const/4 v0, 0x0

    iput v0, p0, mPreparedCollection:I

    .line 572
    return-void
.end method

.method protected final isDisable()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 360
    invoke-virtual {p0}, getUsedTotalCount()I

    move-result v1

    if-ge v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected final isEnable()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 351
    invoke-virtual {p0}, getUsedTotalCount()I

    move-result v1

    if-gt v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 620
    if-nez p2, :cond_10

    .line 621
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 632
    :goto_f
    return-void

    .line 627
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckResult = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CheckResult"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Cause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Cause"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 631
    invoke-super {p0, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_f
.end method

.method protected final notifyFaultDetectionResult()V
    .registers 3

    .prologue
    .line 335
    invoke-virtual {p0}, getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    .line 336
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_c

    .line 337
    const-string v1, "Fault Detection Result is null."

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 343
    :goto_b
    return-void

    .line 341
    :cond_c
    invoke-virtual {p0}, getContextTypeOfFaultDetection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_b
.end method

.method public onTimeChanged()V
    .registers 1

    .prologue
    .line 741
    invoke-virtual {p0}, disable()V

    .line 742
    invoke-virtual {p0}, enable()V

    .line 743
    return-void
.end method

.method protected processApPowerStatus()V
    .registers 3

    .prologue
    .line 505
    iget v0, p0, mApStatus:I

    const/16 v1, -0x2e

    if-ne v0, v1, :cond_a

    .line 506
    invoke-virtual {p0}, updateApSleep()V

    .line 510
    :cond_9
    :goto_9
    return-void

    .line 507
    :cond_a
    iget v0, p0, mApStatus:I

    const/16 v1, -0x2f

    if-ne v0, v1, :cond_9

    .line 508
    invoke-virtual {p0}, updateApWakeup()V

    goto :goto_9
.end method

.method protected final registerApPowerObserver()V
    .registers 3

    .prologue
    .line 444
    iget-object v0, p0, mSensorHubResetObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    if-eqz v0, :cond_d

    .line 445
    iget-object v0, p0, mSensorHubResetObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    invoke-virtual {p0}, getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;->registerSensorHubResetObserver(Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;)V

    .line 448
    :cond_d
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    move-result-object v0

    invoke-virtual {p0}, getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->registerApPowerObserver(Lcom/samsung/android/contextaware/manager/IApPowerObserver;)V

    .line 450
    return-void
.end method

.method public final setAPStatus(I)V
    .registers 2
    .param p1, "status"    # I

    .prologue
    .line 683
    iput p1, p0, mApStatus:I

    .line 684
    return-void
.end method

.method protected final setVersion(I)V
    .registers 2
    .param p1, "version"    # I

    .prologue
    .line 711
    iput p1, p0, mVersion:I

    .line 712
    return-void
.end method

.method public start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "operation"    # I

    .prologue
    .line 128
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 129
    invoke-virtual {p0}, isEnable()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 130
    invoke-virtual {p0}, initialize()V

    .line 131
    invoke-virtual {p0}, clear()V

    .line 132
    invoke-virtual {p0, p2}, enableForStart(I)V

    .line 133
    invoke-virtual {p0}, registerApPowerObserver()V

    .line 135
    invoke-virtual {p0}, getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 136
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    move-result-object v0

    invoke-virtual {p0}, getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->registerObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;)V

    .line 140
    :cond_26
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2c

    .line 141
    invoke-virtual {p0}, notifyFaultDetectionResult()V

    .line 143
    :cond_2c
    return-void
.end method

.method public stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "operation"    # I

    .prologue
    .line 155
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 156
    invoke-virtual {p0}, isDisable()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 157
    invoke-virtual {p0}, clear()V

    .line 158
    invoke-virtual {p0}, unregisterApPowerObserver()V

    .line 159
    invoke-virtual {p0, p2}, disableForStop(I)V

    .line 160
    invoke-virtual {p0}, terminate()V

    .line 162
    invoke-virtual {p0}, getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 163
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    move-result-object v0

    invoke-virtual {p0}, getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->unregisterObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;)V

    .line 167
    :cond_26
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2c

    .line 168
    invoke-virtual {p0}, notifyFaultDetectionResult()V

    .line 170
    :cond_2c
    return-void
.end method

.method protected final unregisterApPowerObserver()V
    .registers 3

    .prologue
    .line 460
    iget-object v0, p0, mSensorHubResetObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    if-eqz v0, :cond_d

    .line 461
    iget-object v0, p0, mSensorHubResetObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    invoke-virtual {p0}, getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;->unregisterSensorHubResetObserver(Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;)V

    .line 464
    :cond_d
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    move-result-object v0

    invoke-virtual {p0}, getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->unregisterApPowerObserver(Lcom/samsung/android/contextaware/manager/IApPowerObserver;)V

    .line 466
    return-void
.end method

.method public updateApPowerStatus(IJ)V
    .registers 6
    .param p1, "status"    # I
    .param p2, "timeStamp"    # J

    .prologue
    .line 492
    iput p1, p0, mApStatus:I

    .line 493
    iput-wide p2, p0, mTimeStampForApStatus:J

    .line 494
    invoke-virtual {p0}, getUsedSubCollectionCount()I

    move-result v0

    if-lez v0, :cond_13

    invoke-virtual {p0}, getUsedSubCollectionCount()I

    move-result v0

    iget v1, p0, mPreparedCollection:I

    if-le v0, v1, :cond_13

    .line 499
    :goto_12
    return-void

    .line 498
    :cond_13
    invoke-virtual {p0}, processApPowerStatus()V

    goto :goto_12
.end method

.method public final updateApPowerStatusForPreparedCollection()V
    .registers 3

    .prologue
    .line 476
    iget v0, p0, mPreparedCollection:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mPreparedCollection:I

    .line 477
    invoke-virtual {p0}, getUsedSubCollectionCount()I

    move-result v0

    iget v1, p0, mPreparedCollection:I

    if-le v0, v1, :cond_f

    .line 481
    :goto_e
    return-void

    .line 480
    :cond_f
    invoke-virtual {p0}, processApPowerStatus()V

    goto :goto_e
.end method

.method protected updateApReset()V
    .registers 2

    .prologue
    .line 545
    invoke-virtual {p0}, reset()V

    .line 546
    const/4 v0, 0x0

    iput v0, p0, mApStatus:I

    .line 547
    return-void
.end method

.method protected updateApSleep()V
    .registers 2

    .prologue
    .line 529
    invoke-virtual {p0}, pause()V

    .line 530
    const/4 v0, 0x0

    iput v0, p0, mApStatus:I

    .line 531
    return-void
.end method

.method protected updateApWakeup()V
    .registers 2

    .prologue
    .line 537
    invoke-virtual {p0}, resume()V

    .line 538
    const/4 v0, 0x0

    iput v0, p0, mApStatus:I

    .line 539
    return-void
.end method

.method public updateSensorHubResetStatus(I)V
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 520
    const/16 v0, -0x2b

    if-ne p1, v0, :cond_7

    .line 521
    invoke-virtual {p0}, reset()V

    .line 523
    :cond_7
    return-void
.end method
