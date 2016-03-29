.class public Lcom/android/systemui/statusbar/policy/EthernetSignalController;
.super Lcom/android/systemui/statusbar/policy/SignalController;
.source "EthernetSignalController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/EthernetSignalController$1;,
        Lcom/android/systemui/statusbar/policy/EthernetSignalController$EthernetHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/SignalController",
        "<",
        "Lcom/android/systemui/statusbar/policy/SignalController$State;",
        "Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private mEthernetChannel:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbackHandler"    # Lcom/android/systemui/statusbar/policy/CallbackHandler;
    .param p3, "networkController"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 43
    const-string v1, "EthernetSignalController"

    const/4 v3, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 45
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    const-string v1, "Ethernet Icons"

    sget-object v2, Lcom/android/systemui/statusbar/policy/EthernetIcons;->ETHERNET_ICONS:[[I

    const/4 v3, 0x0

    check-cast v3, [[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->ETHERNET_CONNECTION_VALUES:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->ETHERNET_CONNECTION_VALUES:[I

    const/4 v12, 0x0

    aget v9, v9, v12

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iput-object v0, v11, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v0, v10, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 52
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/EthernetSignalController;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mEthernetChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method


# virtual methods
.method public cleanState()Lcom/android/systemui/statusbar/policy/SignalController$State;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalController$State;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/SignalController$State;-><init>()V

    return-object v0
.end method

.method getActivityIcon()I
    .locals 2

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "activityIcon":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    if-eqz v1, :cond_1

    .line 107
    const v0, 0x7f020556

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    if-eqz v1, :cond_2

    .line 109
    const v0, 0x7f02054f

    goto :goto_0

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    if-eqz v1, :cond_3

    .line 111
    const v0, 0x7f020561

    goto :goto_0

    .line 113
    :cond_3
    const v0, 0x7f02055b

    goto :goto_0
.end method

.method public notifyListeners()V
    .locals 5

    .prologue
    .line 73
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    .line 74
    .local v1, "ethernetVisible":Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->getContentDescription()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "contentDescription":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->getCurrentIconId()I

    move-result v4

    invoke-direct {v3, v1, v4, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->getActivityIcon()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V

    .line 87
    return-void
.end method

.method setActivity(I)V
    .locals 5
    .param p1, "ethernetActivity"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 96
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    if-eq p1, v4, :cond_0

    if-ne p1, v2, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    if-eq p1, v4, :cond_1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->notifyListenersIfNecessary()V

    .line 101
    return-void

    :cond_3
    move v0, v1

    .line 96
    goto :goto_0
.end method

.method public updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
    .locals 5
    .param p1, "connectedTransports"    # Ljava/util/BitSet;
    .param p2, "validatedTransports"    # Ljava/util/BitSet;

    .prologue
    .line 56
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mTransportType:I

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    .line 58
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-eqz v3, :cond_0

    .line 59
    new-instance v2, Lcom/android/systemui/statusbar/policy/EthernetSignalController$EthernetHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/policy/EthernetSignalController$EthernetHandler;-><init>(Lcom/android/systemui/statusbar/policy/EthernetSignalController;Lcom/android/systemui/statusbar/policy/EthernetSignalController$1;)V

    .line 60
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mEthernetChannel:Lcom/android/internal/util/AsyncChannel;

    .line 61
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mContext:Landroid/content/Context;

    const-string v4, "ethernet"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/EthernetManager;

    .line 62
    .local v0, "ethernetManager":Landroid/net/EthernetManager;
    invoke-virtual {v0}, Landroid/net/EthernetManager;->getEthernetServiceMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 63
    .local v1, "ethernetMessenger":Landroid/os/Messenger;
    if-eqz v1, :cond_0

    .line 64
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mEthernetChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 68
    .end local v0    # "ethernetManager":Landroid/net/EthernetManager;
    .end local v1    # "ethernetMessenger":Landroid/os/Messenger;
    .end local v2    # "handler":Landroid/os/Handler;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/SignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    .line 69
    return-void
.end method
