.class public Lcom/android/systemui/qs/tiles/NfcTile;
.super Lcom/android/systemui/qs/QSTile;
.source "NfcTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final ADAPTER_BOOT_ACTION:Ljava/lang/String; = "android.nfc.action.ADAPTER_BOOT_COMPLETED"

.field private static final LOCKSTATUS_LOCK_ACTION:Ljava/lang/String; = "com.samsung.felica.action.LOCKSTATUS_LOCK"

.field private static final LOCKSTATUS_UNLOCK_ACTION:Ljava/lang/String; = "com.samsung.felica.action.LOCKSTATUS_UNLOCK"

.field private static final NFC_STATE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NfcTile"


# instance fields
.field private mIconId:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsNfcP2PMode:Z

.field private mIsOffClick:Z

.field private mLabelId:I

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mPrevNfcState:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 45
    iput-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 48
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsOffClick:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsNfcP2PMode:Z

    .line 50
    iput v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mPrevNfcState:I

    .line 59
    new-instance v0, Lcom/android/systemui/qs/tiles/NfcTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/NfcTile$1;-><init>(Lcom/android/systemui/qs/tiles/NfcTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    const-string v0, "nfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    iput-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 117
    :goto_0
    const v0, 0x7f0d02c8

    iput v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mLabelId:I

    .line 118
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/NfcTile;)Landroid/nfc/NfcAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NfcTile;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/NfcTile;Landroid/nfc/NfcAdapter;)Landroid/nfc/NfcAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NfcTile;
    .param p1, "x1"    # Landroid/nfc/NfcAdapter;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/NfcTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NfcTile;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NfcTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NfcTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NfcTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NfcTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NfcTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NfcTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NfcTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NfcTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NfcTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NfcTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private isBlockedByEdmPolicy()Z
    .locals 5

    .prologue
    .line 385
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/NfcTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v3, "isNFCEnabledWithMsg"

    sget-object v4, Lcom/android/systemui/qs/tiles/NfcTile;->selectionArgsTrue:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/qs/tiles/NfcTile;->isBlockedEdmUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider2/MiscPolicy"

    const-string v3, "isNFCStateChangeAllowed"

    sget-object v4, Lcom/android/systemui/qs/tiles/NfcTile;->selectionArgsFalse:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/qs/tiles/NfcTile;->isBlockedEdmUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 388
    :cond_0
    const/4 v0, 0x1

    .line 392
    .local v0, "ret":Z
    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "NfcTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBlockedByEdmPolicy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_1
    return v0

    .line 390
    .end local v0    # "ret":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/qs/tiles/NfcTile;->makeContentDescription(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActionTypeOnCover()I
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x2

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 398
    const/16 v0, 0x19a

    return v0
.end method

.method protected getNfcTileState()I
    .locals 2

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_0

    .line 122
    const/4 v1, 0x2

    .line 126
    :goto_0
    return v1

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    .line 126
    .local v0, "state":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/NfcTile;->getNfcTileState(I)I

    move-result v1

    goto :goto_0
.end method

.method protected getNfcTileState(I)I
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x2

    .line 131
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUse3ToggleNfcCForKOR:Z

    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->getNfcTileState3Toggle(I)I

    move-result v1

    .line 154
    :goto_0
    :pswitch_0
    return v1

    .line 135
    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mSupportNFCForJPN:Z

    if-eqz v2, :cond_1

    .line 136
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterRwP2pState()I

    move-result v0

    .line 137
    .local v0, "rwP2pState":I
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tiles/NfcTile;->getNfcTileStateForJPN(II)I

    move-result v1

    goto :goto_0

    .line 140
    .end local v0    # "rwP2pState":I
    :cond_1
    const-string v2, "NfcTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNfcTileState : nfcState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 151
    :pswitch_1
    const/4 v1, 0x3

    goto :goto_0

    .line 144
    :pswitch_2
    const/4 v1, 0x1

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getNfcTileState3Toggle(I)I
    .locals 8
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x2

    const v7, 0x7f0d02c9

    const/4 v1, 0x3

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 160
    const-string v3, "NfcTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3toggle : nfcState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mPrevNfcState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mPrevNfcState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iput-boolean v6, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsNfcP2PMode:Z

    .line 163
    packed-switch p1, :pswitch_data_0

    .line 202
    iput-boolean v6, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsOffClick:Z

    .line 203
    iput v6, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mPrevNfcState:I

    .line 204
    const v0, 0x7f0d02c8

    iput v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mLabelId:I

    move v0, v2

    .line 205
    :goto_0
    return v0

    .line 165
    :pswitch_0
    iput-boolean v6, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsOffClick:Z

    .line 166
    iput v6, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mPrevNfcState:I

    .line 167
    iput v7, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mLabelId:I

    goto :goto_0

    .line 171
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsOffClick:Z

    if-ne v3, v0, :cond_0

    iget v3, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mPrevNfcState:I

    if-ne v3, v2, :cond_0

    .line 172
    iput-boolean v6, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsOffClick:Z

    .line 173
    iput p1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mPrevNfcState:I

    .line 174
    iput v7, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mLabelId:I

    move v0, v1

    .line 175
    goto :goto_0

    .line 177
    :cond_0
    iput-boolean v6, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsOffClick:Z

    .line 178
    iput v6, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mPrevNfcState:I

    .line 179
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsNfcP2PMode:Z

    .line 180
    const v1, 0x7f0d02ca

    iput v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mLabelId:I

    goto :goto_0

    .line 185
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsOffClick:Z

    if-ne v2, v0, :cond_1

    iget v2, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mPrevNfcState:I

    if-ne v2, v0, :cond_1

    .line 186
    iput p1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mPrevNfcState:I

    .line 191
    :goto_1
    iput v7, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mLabelId:I

    move v0, v1

    .line 192
    goto :goto_0

    .line 188
    :cond_1
    iput-boolean v6, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsOffClick:Z

    .line 189
    iput v6, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mPrevNfcState:I

    goto :goto_1

    .line 195
    :pswitch_3
    iput-boolean v6, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsOffClick:Z

    .line 196
    iput v6, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mPrevNfcState:I

    .line 197
    const v0, 0x7f0d02c8

    iput v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mLabelId:I

    move v0, v1

    .line 198
    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method protected getNfcTileStateForJPN(II)I
    .locals 6
    .param p1, "state"    # I
    .param p2, "rwP2pState"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 211
    const-string v3, "NfcTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNfcTileStateForJPN : rwP2pState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    if-ne p1, v2, :cond_0

    .line 234
    :goto_0
    :pswitch_0
    return v0

    .line 214
    :cond_0
    if-ne p1, v0, :cond_2

    .line 215
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v3, :cond_1

    move v0, v1

    .line 216
    goto :goto_0

    .line 218
    :cond_1
    packed-switch p2, :pswitch_data_0

    move v0, v1

    .line 230
    goto :goto_0

    :pswitch_1
    move v0, v2

    .line 220
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 223
    goto :goto_0

    :cond_2
    move v0, v1

    .line 234
    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getUnlockTypeInSecure()I
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x1

    return v0
.end method

.method public handleClick()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 299
    const-string v4, "NfcTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleClick : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    const-string v1, "NfcTile"

    const-string v4, "handleClick/requireCredentialEntry"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 371
    :cond_1
    :goto_0
    return-void

    .line 308
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    .line 309
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_1

    .line 310
    const-string v1, "NfcTile"

    const-string v2, "mNfcAdapter is Null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 315
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->isBlockedByEdmPolicy()Z

    move-result v1

    if-nez v1, :cond_1

    .line 317
    const-string v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_4

    .line 318
    const-string v1, "NfcTile"

    const-string v2, "NFC Service is not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 321
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_5

    .line 322
    const-string v1, "NfcTile"

    const-string v4, "mNfcAdapter is null"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_5

    .line 324
    const-string v1, "NfcTile"

    const-string v2, "mNfcAdapter is still null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    :cond_5
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUse3ToggleNfcCForKOR:Z

    if-eqz v1, :cond_6

    .line 329
    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsOffClick:Z

    .line 330
    iput v3, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mPrevNfcState:I

    .line 331
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    .line 332
    .local v0, "nfcState":I
    packed-switch v0, :pswitch_data_0

    .line 358
    :pswitch_0
    const-string v1, "NfcTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid NFC state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 334
    :pswitch_1
    const-string v1, "NfcTile"

    const-string v3, "Change to NFC STATE_CARD_MODE_ON"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsOffClick:Z

    .line 336
    iput v2, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mPrevNfcState:I

    .line 337
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 338
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 339
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    goto/16 :goto_0

    .line 345
    :pswitch_2
    const-string v1, "NfcTile"

    const-string v2, "Change to NFC STATE_ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 347
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    goto/16 :goto_0

    .line 350
    :pswitch_3
    const-string v1, "NfcTile"

    const-string v2, "Change to NFC STATE_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 352
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    goto/16 :goto_0

    .line 361
    .end local v0    # "nfcState":I
    :cond_6
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mSupportNFCForJPN:Z

    if-eqz v1, :cond_8

    .line 362
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v1, v6, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/nfc/NfcAdapter;->setRwP2pMode(Z)Z

    goto/16 :goto_0

    :cond_7
    move v1, v3

    goto :goto_1

    .line 364
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v1, v6, :cond_9

    .line 365
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    goto/16 :goto_0

    .line 367
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    goto/16 :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public handleLongClick()V
    .locals 3

    .prologue
    .line 375
    const-string v1, "NfcTile"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLongClick : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->isBlockedByEdmPolicy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 377
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportNFCSettingActForJPN:Z

    if-eqz v0, :cond_1

    .line 378
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$NfcOsaifukeitaiSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/NfcTile;->startActivityDismissingKeyguard(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_1
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$NfcSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/NfcTile;->startActivityDismissingKeyguard(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 5
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v1, 0x7f0d02c8

    const v3, 0x7f020373

    const/4 v4, 0x1

    .line 245
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 246
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 247
    iput-boolean v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 248
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUse3ToggleNfcCForKOR:Z

    if-eqz v2, :cond_4

    .line 249
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsNfcP2PMode:Z

    if-eqz v2, :cond_1

    .line 250
    iput v3, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIconId:I

    .line 254
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mLabelId:I

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 255
    iget v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIconId:I

    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 257
    iget v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v1, v4, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsNfcP2PMode:Z

    if-nez v1, :cond_3

    .line 258
    iput v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->bgValue:I

    .line 273
    :goto_3
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tiles/NfcTile;->makeContentDescription(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 274
    return-void

    .line 245
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->getNfcTileState()I

    move-result v0

    goto :goto_0

    .line 252
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :cond_1
    const v2, 0x7f020372

    iput v2, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIconId:I

    goto :goto_1

    .line 254
    :cond_2
    iget v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mLabelId:I

    goto :goto_2

    .line 260
    :cond_3
    const/4 v1, 0x2

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->bgValue:I

    goto :goto_3

    .line 262
    :cond_4
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseNFCLabelForJPN:Z

    if-eqz v2, :cond_5

    .line 263
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d02cb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 268
    :goto_4
    invoke-static {v3}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_3

    .line 265
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    goto :goto_4
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/NfcTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 240
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 277
    if-eqz p1, :cond_2

    .line 278
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 279
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mSupportNFCForJPN:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mSupportNFCFactoryModeForJPN:Z

    if-eqz v1, :cond_1

    .line 282
    :cond_0
    const-string v1, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string v1, "com.samsung.felica.action.LOCKSTATUS_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    const-string v1, "com.samsung.felica.action.LOCKSTATUS_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v1, "android.nfc.action.ADAPTER_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 291
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 289
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
