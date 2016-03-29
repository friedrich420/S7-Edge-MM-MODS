.class public Lcom/android/settings/rcs/RcsUtils$RcsFeatures;
.super Ljava/lang/Object;
.source "RcsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/rcs/RcsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RcsFeatures"
.end annotation


# instance fields
.field private mIsLoaded:Z

.field private mRcsFeatures:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/settings/rcs/RcsUtils$RcsFeature;",
            ">;"
        }
    .end annotation
.end field

.field private mapRcsFeature:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/rcs/RcsUtils$RcsFeature;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/rcs/RcsUtils;


# direct methods
.method public constructor <init>(Lcom/android/settings/rcs/RcsUtils;)V
    .locals 3

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;->this$0:Lcom/android/settings/rcs/RcsUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;->mapRcsFeature:Ljava/util/HashMap;

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;->mIsLoaded:Z

    .line 277
    iget-object v0, p0, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;->mapRcsFeature:Ljava/util/HashMap;

    const-string v1, "PARTIAL_BRANDED"

    sget-object v2, Lcom/android/settings/rcs/RcsUtils$RcsFeature;->RCS_BB_PARTIAL_BRANDED:Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;->mapRcsFeature:Ljava/util/HashMap;

    const-string v1, "FULL_BRANDED"

    sget-object v2, Lcom/android/settings/rcs/RcsUtils$RcsFeature;->RCS_BB_FULL_BRANDED:Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v0, p0, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;->mapRcsFeature:Ljava/util/HashMap;

    const-string v1, "RCS_UI_FOR_OPEN"

    sget-object v2, Lcom/android/settings/rcs/RcsUtils$RcsFeature;->RCS_EXTRAS_RCS_UI_FOR_OPEN:Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;->loadRcsFeatures(Z)V

    .line 282
    return-void
.end method

.method private loadRcsFeatures(Z)V
    .locals 8
    .param p1, "force"    # Z

    .prologue
    .line 285
    iget-boolean v6, p0, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;->mIsLoaded:Z

    if-eqz v6, :cond_0

    if-nez p1, :cond_0

    .line 286
    # getter for: Lcom/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/rcs/RcsUtils;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "loadRcsFeatures: already loaded"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :goto_0
    return-void

    .line 290
    :cond_0
    sget-object v6, Lcom/android/settings/rcs/RcsUtils$RcsFeature;->UNKNOWN:Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;->mRcsFeatures:Ljava/util/EnumSet;

    .line 292
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_IMS_ConfigRcsFeatures"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "cscValue":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 294
    # getter for: Lcom/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/rcs/RcsUtils;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "loadRcsFeatures: there is no RCS config feature"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    :cond_1
    iget-object v6, p0, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;->mRcsFeatures:Ljava/util/EnumSet;

    invoke-virtual {v6}, Ljava/util/EnumSet;->clear()V

    .line 299
    iget-object v6, p0, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;->mRcsFeatures:Ljava/util/EnumSet;

    sget-object v7, Lcom/android/settings/rcs/RcsUtils$RcsFeature;->RCSE:Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    invoke-virtual {v6, v7}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 301
    const-string v6, "\\|"

    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "arrayValue":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v5, v0, v3

    .line 304
    .local v5, "s":Ljava/lang/String;
    const-string v6, "PARTIAL_BRANDED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "FULL_BRANDED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 305
    :cond_2
    iget-object v6, p0, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;->mRcsFeatures:Ljava/util/EnumSet;

    sget-object v7, Lcom/android/settings/rcs/RcsUtils$RcsFeature;->RCSE:Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    invoke-virtual {v6, v7}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 308
    :cond_3
    iget-object v6, p0, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;->mapRcsFeature:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 309
    iget-object v6, p0, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;->mRcsFeatures:Ljava/util/EnumSet;

    iget-object v7, p0, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;->mapRcsFeature:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 313
    .end local v5    # "s":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;->mIsLoaded:Z

    goto :goto_0
.end method


# virtual methods
.method public isFullBranded()Z
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;->mRcsFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/settings/rcs/RcsUtils$RcsFeature;->RCS_BB_FULL_BRANDED:Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPartialBranded()Z
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;->mRcsFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/settings/rcs/RcsUtils$RcsFeature;->RCS_BB_PARTIAL_BRANDED:Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRcsUiForOpen()Z
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;->mRcsFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/settings/rcs/RcsUtils$RcsFeature;->RCS_EXTRAS_RCS_UI_FOR_OPEN:Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRcse()Z
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;->mRcsFeatures:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/settings/rcs/RcsUtils$RcsFeature;->RCSE:Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
