.class Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;
.super Ljava/lang/Object;
.source "EpdgImsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OmadmEpdgSettings"
.end annotation


# instance fields
.field private mCdmaRssi:I

.field private mLteRsrp1:I

.field private mLteRsrp2:I

.field private mLteRsrp3:I

.field private mTepdg1xTimer:I

.field private mTepdgLteTimer:I

.field private mTepdgWifiTimer:I

.field private mWifiRssiA:I

.field private mWifiRssiB:I

.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsSettings;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/handover/EpdgImsSettings;)V
    .registers 3

    .prologue
    const/high16 v0, -0x80000000

    .line 250
    iput-object p1, p0, this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput v0, p0, mWifiRssiA:I

    .line 252
    iput v0, p0, mWifiRssiB:I

    .line 253
    iput v0, p0, mLteRsrp1:I

    .line 254
    iput v0, p0, mLteRsrp2:I

    .line 255
    iput v0, p0, mLteRsrp3:I

    .line 256
    iput v0, p0, mCdmaRssi:I

    .line 257
    iput v0, p0, mTepdgLteTimer:I

    .line 258
    iput v0, p0, mTepdg1xTimer:I

    .line 259
    iput v0, p0, mTepdg1xTimer:I

    .line 260
    iput v0, p0, mTepdgWifiTimer:I

    .line 261
    return-void
.end method


# virtual methods
.method public getCdmaRssi()I
    .registers 2

    .prologue
    .line 344
    iget v0, p0, mCdmaRssi:I

    return v0
.end method

.method public getLteRsrp1()I
    .registers 2

    .prologue
    .line 296
    iget v0, p0, mLteRsrp1:I

    return v0
.end method

.method public getLteRsrp2()I
    .registers 2

    .prologue
    .line 312
    iget v0, p0, mLteRsrp2:I

    return v0
.end method

.method public getLteRsrp3()I
    .registers 2

    .prologue
    .line 328
    iget v0, p0, mLteRsrp3:I

    return v0
.end method

.method public getTepdg1xTimer()I
    .registers 2

    .prologue
    .line 376
    iget v0, p0, mTepdg1xTimer:I

    return v0
.end method

.method public getTepdgLteTimer()I
    .registers 2

    .prologue
    .line 360
    iget v0, p0, mTepdgLteTimer:I

    return v0
.end method

.method public getTepdgWifiTimer()I
    .registers 2

    .prologue
    .line 392
    iget v0, p0, mTepdgWifiTimer:I

    return v0
.end method

.method public getWifiRssiA()I
    .registers 2

    .prologue
    .line 264
    iget v0, p0, mWifiRssiA:I

    return v0
.end method

.method public getWifiRssiB()I
    .registers 2

    .prologue
    .line 280
    iget v0, p0, mWifiRssiB:I

    return v0
.end method

.method public setCdmaRssi(Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x88

    .line 348
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 349
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 350
    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EPDG_TH1X : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 352
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getCdmaRssi()I

    move-result v2

    if-eq v1, v2, :cond_40

    .line 353
    iget-object v2, p0, this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string/jumbo v3, "smartwificdmarssi"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_40
    iput v1, p0, mCdmaRssi:I

    .line 357
    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_42
    return-void
.end method

.method public setLteRsrp1(Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x85

    .line 300
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 301
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 302
    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EPDG_THLTE1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 304
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v2

    if-eq v1, v2, :cond_40

    .line 305
    iget-object v2, p0, this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string/jumbo v3, "smartwifirsrp1"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_40
    iput v1, p0, mLteRsrp1:I

    .line 309
    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_42
    return-void
.end method

.method public setLteRsrp2(Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x86

    .line 316
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 317
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 318
    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EPDG_THLTE2 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 320
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v2

    if-eq v1, v2, :cond_40

    .line 321
    iget-object v2, p0, this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string/jumbo v3, "smartwifirsrp2"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_40
    iput v1, p0, mLteRsrp2:I

    .line 325
    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_42
    return-void
.end method

.method public setLteRsrp3(Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x87

    .line 332
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 333
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 334
    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EPDG_THLTE3 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 336
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v2

    if-eq v1, v2, :cond_40

    .line 337
    iget-object v2, p0, this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string/jumbo v3, "smartwifirsrp3"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_40
    iput v1, p0, mLteRsrp3:I

    .line 341
    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_42
    return-void
.end method

.method public setTepdg1xTimer(Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x8d

    .line 380
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 381
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 382
    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T_EPDG_1X : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 384
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v2

    if-eq v1, v2, :cond_40

    .line 385
    iget-object v2, p0, this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string/jumbo v3, "tepdg1xtimer"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_40
    iput v1, p0, mTepdg1xTimer:I

    .line 389
    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_42
    return-void
.end method

.method public setTepdgLteTimer(Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x8b

    .line 364
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 365
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 366
    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T_EPDG_LTE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 368
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v2

    if-eq v1, v2, :cond_40

    .line 369
    iget-object v2, p0, this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string/jumbo v3, "tepdgltetimer"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_40
    iput v1, p0, mTepdgLteTimer:I

    .line 373
    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_42
    return-void
.end method

.method public setTepdgWifiTimer(Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x8c

    .line 396
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 397
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 398
    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T_EPDG_WIFI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 400
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getSysSelTimer()I

    move-result v2

    if-eq v1, v2, :cond_40

    .line 401
    iget-object v2, p0, this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string/jumbo v3, "sysseltimer"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_40
    iput v1, p0, mTepdgWifiTimer:I

    .line 405
    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_42
    return-void
.end method

.method public setWifiRssiA(Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x89

    .line 268
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 269
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 270
    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EPDG_VOWT_A : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 272
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v2

    if-eq v1, v2, :cond_40

    .line 273
    iget-object v2, p0, this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string/jumbo v3, "smartwifirssia"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_40
    iput v1, p0, mWifiRssiA:I

    .line 277
    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_42
    return-void
.end method

.method public setWifiRssiB(Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x8a

    .line 284
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 285
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 286
    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EPDG_VOWT_B : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 288
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v2

    if-eq v1, v2, :cond_40

    .line 289
    iget-object v2, p0, this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string/jumbo v3, "smartwifirssib"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_40
    iput v1, p0, mWifiRssiB:I

    .line 293
    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_42
    return-void
.end method
