.class public Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;
.super Ljava/lang/Object;
.source "CocktailBarModeManager.java"

# interfaces
.implements Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;


# static fields
.field public static final COCKTAIL_MODE_KNOX:I = 0x2

.field public static final COCKTAIL_MODE_KNOX_COM:I = 0x3

.field public static final COCKTAIL_MODE_NORMAL:I = 0x1

.field public static final COCKTAIL_MODE_PRIVATE_MODE:I = 0x10000

.field public static final COCKTAIL_MODE_UNKNOWN:I = 0x0

.field public static final COCKTAIL_TYPE_ALONE:I = 0x2

.field public static final COCKTAIL_TYPE_OVERLAY:I = 0x1

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCocktailBarModeId:I

.field private mContext:Landroid/content/Context;

.field private mKnoxMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

.field private mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

.field private mNextPrivateModeId:I

.field private mNormalMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

.field private mPrivateModeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/cocktailbar/mode/CocktailBarMode;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivateModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cocktailbar/mode/CocktailBarMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 22
    const-class v1, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, TAG:Ljava/lang/String;

    .line 24
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_10

    const/4 v0, 0x0

    :cond_10
    sput-boolean v0, DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    const/high16 v6, 0x10000

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, mCocktailBarModeId:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, mNextPrivateModeId:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPrivateModes:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mPrivateModeMap:Ljava/util/HashMap;

    .line 58
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    .line 60
    new-instance v0, Lcom/android/server/cocktailbar/mode/NormalMode;

    invoke-direct {v0}, Lcom/android/server/cocktailbar/mode/NormalMode;-><init>()V

    iput-object v0, p0, mNormalMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .line 61
    new-instance v0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const/4 v2, 0x2

    iget-object v5, p0, mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    move-object v3, p3

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;)V

    iput-object v0, p0, mKnoxMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .line 62
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_aa

    .line 67
    :goto_3e
    new-instance v0, Lcom/android/server/cocktailbar/mode/PrivateRestrictMode;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget v2, p0, mNextPrivateModeId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, mNextPrivateModeId:I

    or-int/2addr v2, v6

    invoke-direct {v0, v1, v2, p3, p0}, Lcom/android/server/cocktailbar/mode/PrivateRestrictMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    invoke-direct {p0, v0}, setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    .line 69
    new-instance v0, Lcom/android/server/cocktailbar/mode/PrivateCarMode;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget v2, p0, mNextPrivateModeId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, mNextPrivateModeId:I

    or-int/2addr v2, v6

    invoke-direct {v0, v1, v2, p3, p0}, Lcom/android/server/cocktailbar/mode/PrivateCarMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    invoke-direct {p0, v0}, setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    .line 71
    new-instance v0, Lcom/android/server/cocktailbar/mode/PrivateMirroLinkMode;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget v2, p0, mNextPrivateModeId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, mNextPrivateModeId:I

    or-int/2addr v2, v6

    invoke-direct {v0, v1, v2, p3, p0}, Lcom/android/server/cocktailbar/mode/PrivateMirroLinkMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    invoke-direct {p0, v0}, setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    .line 73
    new-instance v0, Lcom/android/server/cocktailbar/mode/PrivateKidsMode;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget v2, p0, mNextPrivateModeId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, mNextPrivateModeId:I

    or-int/2addr v2, v6

    invoke-direct {v0, v1, v2, p4, p0}, Lcom/android/server/cocktailbar/mode/PrivateKidsMode;-><init>(Landroid/content/Context;ILandroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    invoke-direct {p0, v0}, setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    .line 75
    new-instance v0, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget v2, p0, mNextPrivateModeId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, mNextPrivateModeId:I

    or-int/2addr v2, v6

    invoke-direct {v0, v1, v2, p4, p0}, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;-><init>(Landroid/content/Context;ILandroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    invoke-direct {p0, v0}, setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    .line 77
    new-instance v0, Lcom/android/server/cocktailbar/mode/PrivateKioskMDMMode;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget v2, p0, mNextPrivateModeId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, mNextPrivateModeId:I

    or-int/2addr v2, v6

    invoke-direct {v0, v1, v2, p3, p0}, Lcom/android/server/cocktailbar/mode/PrivateKioskMDMMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    invoke-direct {p0, v0}, setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    .line 79
    iget-object v0, p0, mKnoxMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    invoke-direct {p0, v0}, setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    .line 80
    return-void

    .line 64
    :cond_aa
    new-instance v0, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget v2, p0, mNextPrivateModeId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, mNextPrivateModeId:I

    or-int/2addr v2, v6

    invoke-direct {v0, v1, v2, p3, p0}, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    invoke-direct {p0, v0}, setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    goto :goto_3e
.end method

.method private setupPrivateMode(Lcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    .registers 5
    .param p1, "mode"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .prologue
    .line 83
    iget-object v0, p0, mPrivateModeMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 84
    iget-object v0, p0, mPrivateModes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, mPrivateModeMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :goto_1a
    return-void

    .line 87
    :cond_1b
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setupPrivateMode : exist duplicated privateMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method


# virtual methods
.method public getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    .registers 6
    .param p1, "modeId"    # I

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, "mode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    packed-switch p1, :pswitch_data_30

    .line 126
    iget-object v3, p0, mPrivateModes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .line 127
    .local v2, "pMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    invoke-interface {v2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v3

    if-ne v3, p1, :cond_a

    .line 128
    move-object v1, v2

    .line 134
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "pMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    :cond_1d
    :goto_1d
    :pswitch_1d
    return-object v1

    .line 116
    :pswitch_1e
    iget-object v1, p0, mNormalMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .line 117
    goto :goto_1d

    .line 119
    :pswitch_21
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 120
    iget-object v1, p0, mNormalMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    goto :goto_1d

    .line 122
    :cond_2c
    iget-object v1, p0, mKnoxMode:Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .line 124
    goto :goto_1d

    .line 112
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1e
        :pswitch_21
    .end packed-switch
.end method

.method public getCocktailBarMode(Ljava/lang/String;)Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    .registers 3
    .param p1, "privateMode"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, mPrivateModeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    return-object v0
.end method

.method public getCocktailBarModeName(I)Ljava/lang/String;
    .registers 5
    .param p1, "mode"    # I

    .prologue
    .line 100
    const/4 v2, 0x1

    if-eq p1, v2, :cond_20

    .line 101
    iget-object v2, p0, mPrivateModes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .line 102
    .local v1, "pMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    invoke-interface {v1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v2

    if-ne v2, p1, :cond_9

    .line 103
    invoke-interface {v1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v2

    .line 107
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    :goto_1f
    return-object v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method public getCurrentModeId()I
    .registers 2

    .prologue
    .line 189
    iget v0, p0, mCocktailBarModeId:I

    return v0
.end method

.method public isDisableCocktailBarMode(I)Z
    .registers 6
    .param p1, "modeId"    # I

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-virtual {p0, p1}, getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v0

    .line 143
    .local v0, "mode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    if-eqz v0, :cond_f

    .line 144
    invoke-interface {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getCocktailBarType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    const/4 v1, 0x1

    .line 146
    :cond_f
    return v1
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)Z
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 150
    iget-object v5, p0, mPrivateModes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .line 151
    .local v3, "pMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    invoke-interface {v3}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getRegistrationType()I

    move-result v5

    if-ne v5, v4, :cond_8

    .line 152
    invoke-interface {v3, p1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->onBroadcastReceived(Landroid/content/Intent;)I

    move-result v2

    .line 153
    .local v2, "mode":I
    packed-switch v2, :pswitch_data_42

    goto :goto_8

    .line 172
    .end local v2    # "mode":I
    .end local v3    # "pMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    :goto_22
    :pswitch_22
    return v4

    .line 155
    .restart local v2    # "mode":I
    .restart local v3    # "pMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    :pswitch_23
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {p0, v5, v3}, onSetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    goto :goto_22

    .line 158
    :pswitch_2b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {p0, v5, v3}, onResetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    goto :goto_22

    .line 162
    :pswitch_33
    const/4 v5, 0x4

    if-ne v2, v5, :cond_37

    move v0, v4

    .line 163
    .local v0, "enable":Z
    :cond_37
    invoke-interface {v3}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v5

    invoke-virtual {p0, v0, v5}, restrictMode(ZI)V

    goto :goto_22

    .end local v0    # "enable":Z
    .end local v2    # "mode":I
    .end local v3    # "pMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    :cond_3f
    move v4, v0

    .line 172
    goto :goto_22

    .line 153
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_22
        :pswitch_23
        :pswitch_2b
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method

.method public onResetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "mode"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .prologue
    .line 207
    if-eqz p2, :cond_1a

    iget v0, p0, mCocktailBarModeId:I

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v1

    if-ne v0, v1, :cond_1a

    .line 208
    iget-object v0, p0, mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v1

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onResetMode(IILjava/lang/String;)V

    .line 209
    const/4 v0, 0x1

    iput v0, p0, mCocktailBarModeId:I

    .line 211
    :cond_1a
    return-void
.end method

.method public onSetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "mode"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .prologue
    .line 194
    if-eqz p2, :cond_34

    iget v1, p0, mCocktailBarModeId:I

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v2

    if-eq v1, v2, :cond_34

    .line 195
    iget v1, p0, mCocktailBarModeId:I

    invoke-virtual {p0, v1}, getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v0

    .line 196
    .local v0, "currentMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    if-eqz v0, :cond_1d

    .line 197
    iget-object v1, p0, mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    iget v2, p0, mCocktailBarModeId:I

    invoke-interface {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onUnsetMode(IILjava/lang/String;)V

    .line 199
    :cond_1d
    iget-object v1, p0, mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v2

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getCocktailType()I

    move-result v4

    invoke-interface {v1, p1, v2, v3, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onSetMode(IILjava/lang/String;I)V

    .line 201
    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v1

    iput v1, p0, mCocktailBarModeId:I

    .line 203
    .end local v0    # "currentMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    :cond_34
    return-void
.end method

.method public onSetModeForcely(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "mode"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .prologue
    .line 215
    if-eqz p2, :cond_2c

    .line 216
    iget v1, p0, mCocktailBarModeId:I

    invoke-virtual {p0, v1}, getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v0

    .line 217
    .local v0, "currentMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    if-eqz v0, :cond_15

    .line 218
    iget-object v1, p0, mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    iget v2, p0, mCocktailBarModeId:I

    invoke-interface {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onUnsetMode(IILjava/lang/String;)V

    .line 220
    :cond_15
    iget-object v1, p0, mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v2

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getCocktailType()I

    move-result v4

    invoke-interface {v1, p1, v2, v3, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onSetMode(IILjava/lang/String;I)V

    .line 222
    invoke-interface {p2}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->getModeId()I

    move-result v1

    iput v1, p0, mCocktailBarModeId:I

    .line 224
    .end local v0    # "currentMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    :cond_2c
    return-void
.end method

.method public refreshCocktailBarMode()I
    .registers 5

    .prologue
    .line 92
    iget v1, p0, mCocktailBarModeId:I

    .line 93
    .local v1, "mode":I
    iget-object v3, p0, mPrivateModes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    .line 94
    .local v2, "pMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    invoke-interface {v2, v1}, Lcom/android/server/cocktailbar/mode/CocktailBarMode;->renewMode(I)I

    move-result v1

    .line 95
    goto :goto_8

    .line 96
    .end local v2    # "pMode":Lcom/android/server/cocktailbar/mode/CocktailBarMode;
    :cond_19
    return v1
.end method

.method public resetMode(II)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 180
    invoke-virtual {p0, p2}, getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, onResetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    .line 181
    return-void
.end method

.method public restrictMode(ZI)V
    .registers 4
    .param p1, "enable"    # Z
    .param p2, "modeId"    # I

    .prologue
    .line 184
    iget-object v0, p0, mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onRestrictMode(ZI)V

    .line 185
    return-void
.end method

.method public setMode(II)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 176
    invoke-virtual {p0, p2}, getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, onSetMode(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    .line 177
    return-void
.end method
