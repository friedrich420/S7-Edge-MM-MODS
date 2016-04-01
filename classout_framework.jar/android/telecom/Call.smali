.class public final Landroid/telecom/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Call$Listener;,
        Landroid/telecom/Call$Callback;,
        Landroid/telecom/Call$Details;
    }
.end annotation


# static fields
.field public static final AVAILABLE_PHONE_ACCOUNTS:Ljava/lang/String; = "selectPhoneAccountAccounts"

.field public static final STATE_ACTIVE:I = 0x4

.field public static final STATE_CONNECTING:I = 0x9

.field public static final STATE_DIALING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x7

.field public static final STATE_DISCONNECTING:I = 0xa

.field public static final STATE_HOLDING:I = 0x3

.field public static final STATE_NEW:I = 0x0

.field public static final STATE_PRE_DIAL_WAIT:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_RINGING:I = 0x2

.field public static final STATE_SELECT_PHONE_ACCOUNT:I = 0x8


# instance fields
.field private final mCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/CallbackRecord",
            "<",
            "Landroid/telecom/Call$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCannedTextResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenCached:Z

.field private final mChildrenIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mDetails:Landroid/telecom/Call$Details;

.field private final mInCallAdapter:Landroid/telecom/InCallAdapter;

.field private mParentId:Ljava/lang/String;

.field private final mPhone:Landroid/telecom/Phone;

.field private mRemainingPostDialSequence:Ljava/lang/String;

.field private mState:I

.field private final mTelecomCallId:Ljava/lang/String;

.field private final mUnmodifiableChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnmodifiableConferenceableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoCall:Landroid/telecom/InCallService$VideoCall;


# direct methods
.method constructor <init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;)V
    .registers 6
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "telecomCallId"    # Ljava/lang/String;
    .param p3, "inCallAdapter"    # Landroid/telecom/InCallAdapter;

    .prologue
    const/4 v1, 0x0

    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mChildrenIds:Ljava/util/List;

    .line 733
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mChildren:Ljava/util/List;

    .line 734
    iget-object v0, p0, mChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, mUnmodifiableChildren:Ljava/util/List;

    .line 735
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mCallbackRecords:Ljava/util/List;

    .line 736
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mConferenceableCalls:Ljava/util/List;

    .line 737
    iget-object v0, p0, mConferenceableCalls:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, mUnmodifiableConferenceableCalls:Ljava/util/List;

    .line 741
    iput-object v1, p0, mParentId:Ljava/lang/String;

    .line 743
    iput-object v1, p0, mCannedTextResponses:Ljava/util/List;

    .line 1039
    iput-object p1, p0, mPhone:Landroid/telecom/Phone;

    .line 1040
    iput-object p2, p0, mTelecomCallId:Ljava/lang/String;

    .line 1041
    iput-object p3, p0, mInCallAdapter:Landroid/telecom/InCallAdapter;

    .line 1042
    const/4 v0, 0x0

    iput v0, p0, mState:I

    .line 1043
    return-void
.end method

.method constructor <init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;I)V
    .registers 7
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "telecomCallId"    # Ljava/lang/String;
    .param p3, "inCallAdapter"    # Landroid/telecom/InCallAdapter;
    .param p4, "state"    # I

    .prologue
    const/4 v1, 0x0

    .line 1046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mChildrenIds:Ljava/util/List;

    .line 733
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mChildren:Ljava/util/List;

    .line 734
    iget-object v0, p0, mChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, mUnmodifiableChildren:Ljava/util/List;

    .line 735
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mCallbackRecords:Ljava/util/List;

    .line 736
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mConferenceableCalls:Ljava/util/List;

    .line 737
    iget-object v0, p0, mConferenceableCalls:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, mUnmodifiableConferenceableCalls:Ljava/util/List;

    .line 741
    iput-object v1, p0, mParentId:Ljava/lang/String;

    .line 743
    iput-object v1, p0, mCannedTextResponses:Ljava/util/List;

    .line 1047
    iput-object p1, p0, mPhone:Landroid/telecom/Phone;

    .line 1048
    iput-object p2, p0, mTelecomCallId:Ljava/lang/String;

    .line 1049
    iput-object p3, p0, mInCallAdapter:Landroid/telecom/InCallAdapter;

    .line 1050
    iput p4, p0, mState:I

    .line 1051
    return-void
.end method

.method static synthetic access$000(Landroid/telecom/Call;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/Call;

    .prologue
    .line 36
    iget-object v0, p0, mCallbackRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Landroid/telecom/Call;)Landroid/telecom/Phone;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/Call;

    .prologue
    .line 36
    iget-object v0, p0, mPhone:Landroid/telecom/Phone;

    return-object v0
.end method

.method static synthetic access$200(Landroid/telecom/Call;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/Call;

    .prologue
    .line 36
    iget-object v0, p0, mUnmodifiableConferenceableCalls:Ljava/util/List;

    return-object v0
.end method

.method private fireCallDestroyed()V
    .registers 7

    .prologue
    .line 1278
    move-object v0, p0

    .line 1279
    .local v0, "call":Landroid/telecom/Call;
    iget-object v4, p0, mCallbackRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1281
    iget-object v4, p0, mPhone:Landroid/telecom/Phone;

    invoke-virtual {v4, v0}, Landroid/telecom/Phone;->internalRemoveCall(Landroid/telecom/Call;)V

    .line 1283
    :cond_e
    iget-object v4, p0, mCallbackRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .line 1284
    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Callback;

    .line 1285
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$8;

    invoke-direct {v5, p0, v1, v0, v3}, Landroid/telecom/Call$8;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/CallbackRecord;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_14

    .line 1310
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_33
    return-void
.end method

.method private fireCannedTextResponsesLoaded(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1232
    .local p1, "cannedTextResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, mCallbackRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .line 1233
    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    .line 1234
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Callback;

    .line 1235
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$5;

    invoke-direct {v5, p0, v1, v0, p1}, Landroid/telecom/Call$5;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 1242
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_26
    return-void
.end method

.method private fireChildrenChanged(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1206
    .local p1, "children":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    iget-object v4, p0, mCallbackRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .line 1207
    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    .line 1208
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Callback;

    .line 1209
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$3;

    invoke-direct {v5, p0, v1, v0, p1}, Landroid/telecom/Call$3;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 1216
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_26
    return-void
.end method

.method private fireConferenceableCallsChanged()V
    .registers 7

    .prologue
    .line 1313
    iget-object v4, p0, mCallbackRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .line 1314
    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    .line 1315
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Callback;

    .line 1316
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$9;

    invoke-direct {v5, p0, v1, v0}, Landroid/telecom/Call$9;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 1323
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_26
    return-void
.end method

.method private fireDetailsChanged(Landroid/telecom/Call$Details;)V
    .registers 8
    .param p1, "details"    # Landroid/telecom/Call$Details;

    .prologue
    .line 1219
    iget-object v4, p0, mCallbackRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .line 1220
    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    .line 1221
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Callback;

    .line 1222
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$4;

    invoke-direct {v5, p0, v1, v0, p1}, Landroid/telecom/Call$4;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/Call$Details;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 1229
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_26
    return-void
.end method

.method private fireParentChanged(Landroid/telecom/Call;)V
    .registers 8
    .param p1, "newParent"    # Landroid/telecom/Call;

    .prologue
    .line 1193
    iget-object v4, p0, mCallbackRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .line 1194
    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    .line 1195
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Callback;

    .line 1196
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$2;

    invoke-direct {v5, p0, v1, v0, p1}, Landroid/telecom/Call$2;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/Call;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 1203
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_26
    return-void
.end method

.method private firePostDialWait(Ljava/lang/String;)V
    .registers 8
    .param p1, "remainingPostDialSequence"    # Ljava/lang/String;

    .prologue
    .line 1258
    iget-object v4, p0, mCallbackRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .line 1259
    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    .line 1260
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Callback;

    .line 1261
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$7;

    invoke-direct {v5, p0, v1, v0, p1}, Landroid/telecom/Call$7;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 1268
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_26
    return-void
.end method

.method private fireStateChanged(I)V
    .registers 8
    .param p1, "newState"    # I

    .prologue
    .line 1180
    iget-object v4, p0, mCallbackRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .line 1181
    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    .line 1182
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Callback;

    .line 1183
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$1;

    invoke-direct {v5, p0, v1, v0, p1}, Landroid/telecom/Call$1;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 1190
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_26
    return-void
.end method

.method private fireVideoCallChanged(Landroid/telecom/InCallService$VideoCall;)V
    .registers 8
    .param p1, "videoCall"    # Landroid/telecom/InCallService$VideoCall;

    .prologue
    .line 1245
    iget-object v4, p0, mCallbackRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .line 1246
    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    .line 1247
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Callback;

    .line 1248
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$6;

    invoke-direct {v5, p0, v1, v0, p1}, Landroid/telecom/Call$6;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/InCallService$VideoCall;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 1255
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_26
    return-void
.end method


# virtual methods
.method public addListener(Landroid/telecom/Call$Listener;)V
    .registers 2
    .param p1, "listener"    # Landroid/telecom/Call$Listener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1021
    invoke-virtual {p0, p1}, registerCallback(Landroid/telecom/Call$Callback;)V

    .line 1022
    return-void
.end method

.method public answer(I)V
    .registers 4
    .param p1, "videoState"    # I

    .prologue
    .line 763
    iget-object v0, p0, mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->answerCall(Ljava/lang/String;I)V

    .line 764
    return-void
.end method

.method public conference(Landroid/telecom/Call;)V
    .registers 5
    .param p1, "callToConferenceWith"    # Landroid/telecom/Call;

    .prologue
    .line 857
    if-eqz p1, :cond_b

    .line 858
    iget-object v0, p0, mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, mTelecomCallId:Ljava/lang/String;

    iget-object v2, p1, mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/telecom/InCallAdapter;->conference(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    :cond_b
    return-void
.end method

.method public disconnect()V
    .registers 3

    .prologue
    .line 780
    iget-object v0, p0, mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 781
    return-void
.end method

.method public getCannedTextResponses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 949
    iget-object v0, p0, mCannedTextResponses:Ljava/util/List;

    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 904
    iget-boolean v3, p0, mChildrenCached:Z

    if-nez v3, :cond_30

    .line 905
    const/4 v3, 0x1

    iput-boolean v3, p0, mChildrenCached:Z

    .line 906
    iget-object v3, p0, mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 908
    iget-object v3, p0, mChildrenIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 909
    .local v2, "id":Ljava/lang/String;
    iget-object v3, p0, mPhone:Landroid/telecom/Phone;

    invoke-virtual {v3, v2}, Landroid/telecom/Phone;->internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 910
    .local v0, "call":Landroid/telecom/Call;
    if-nez v0, :cond_2a

    .line 912
    const/4 v3, 0x0

    iput-boolean v3, p0, mChildrenCached:Z

    goto :goto_12

    .line 914
    :cond_2a
    iget-object v3, p0, mChildren:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 919
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/String;
    :cond_30
    iget-object v3, p0, mUnmodifiableChildren:Ljava/util/List;

    return-object v3
.end method

.method public getConferenceableCalls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 928
    iget-object v0, p0, mUnmodifiableConferenceableCalls:Ljava/util/List;

    return-object v0
.end method

.method public getDetails()Landroid/telecom/Call$Details;
    .registers 2

    .prologue
    .line 968
    iget-object v0, p0, mDetails:Landroid/telecom/Call$Details;

    return-object v0
.end method

.method public getParent()Landroid/telecom/Call;
    .registers 3

    .prologue
    .line 891
    iget-object v0, p0, mParentId:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 892
    iget-object v0, p0, mPhone:Landroid/telecom/Phone;

    iget-object v1, p0, mParentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 894
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getRemainingPostDialSequence()Ljava/lang/String;
    .registers 2

    .prologue
    .line 755
    iget-object v0, p0, mRemainingPostDialSequence:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 937
    iget v0, p0, mState:I

    return v0
.end method

.method public getVideoCall()Landroid/telecom/InCallService$VideoCall;
    .registers 2

    .prologue
    .line 958
    iget-object v0, p0, mVideoCall:Landroid/telecom/InCallService$VideoCall;

    return-object v0
.end method

.method public hold()V
    .registers 3

    .prologue
    .line 787
    iget-object v0, p0, mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->holdCall(Ljava/lang/String;)V

    .line 788
    return-void
.end method

.method final internalGetCallId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1055
    iget-object v0, p0, mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method final internalSetDisconnected()V
    .registers 3

    .prologue
    const/4 v1, 0x7

    .line 1172
    iget v0, p0, mState:I

    if-eq v0, v1, :cond_f

    .line 1173
    iput v1, p0, mState:I

    .line 1174
    iget v0, p0, mState:I

    invoke-direct {p0, v0}, fireStateChanged(I)V

    .line 1175
    invoke-direct {p0}, fireCallDestroyed()V

    .line 1177
    :cond_f
    return-void
.end method

.method final internalSetPostDialWait(Ljava/lang/String;)V
    .registers 3
    .param p1, "remaining"    # Ljava/lang/String;

    .prologue
    .line 1166
    iput-object p1, p0, mRemainingPostDialSequence:Ljava/lang/String;

    .line 1167
    iget-object v0, p0, mRemainingPostDialSequence:Ljava/lang/String;

    invoke-direct {p0, v0}, firePostDialWait(Ljava/lang/String;)V

    .line 1168
    return-void
.end method

.method final internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V
    .registers 34
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/ParcelableCall;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1061
    .local p2, "callIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/telecom/Call;>;"
    new-instance v3, Landroid/telecom/Call$Details;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getHandle()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getHandlePresentation()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCallerDisplayNamePresentation()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCapabilities()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getProperties()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getConnectTimeMillis()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getVideoState()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v18

    invoke-direct/range {v3 .. v18}, Landroid/telecom/Call$Details;-><init>(Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/PhoneAccountHandle;IILandroid/telecom/DisconnectCause;JLandroid/telecom/GatewayInfo;ILandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1076
    .local v3, "details":Landroid/telecom/Call$Details;
    move-object/from16 v0, p0

    iget-object v4, v0, mDetails:Landroid/telecom/Call$Details;

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_146

    const/16 v23, 0x1

    .line 1077
    .local v23, "detailsChanged":Z
    :goto_49
    if-eqz v23, :cond_4f

    .line 1078
    move-object/from16 v0, p0

    iput-object v3, v0, mDetails:Landroid/telecom/Call$Details;

    .line 1081
    :cond_4f
    const/4 v2, 0x0

    .line 1082
    .local v2, "cannedTextResponsesChanged":Z
    move-object/from16 v0, p0

    iget-object v4, v0, mCannedTextResponses:Ljava/util/List;

    if-nez v4, :cond_72

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_72

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_72

    .line 1084
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, mCannedTextResponses:Ljava/util/List;

    .line 1088
    :cond_72
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->isVideoCallProviderChanged()Z

    move-result v4

    if-eqz v4, :cond_14a

    move-object/from16 v0, p0

    iget-object v4, v0, mVideoCall:Landroid/telecom/InCallService$VideoCall;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/telecom/ParcelableCall;->getVideoCall(Landroid/telecom/Call;)Landroid/telecom/InCallService$VideoCall;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14a

    const/16 v30, 0x1

    .line 1090
    .local v30, "videoCallChanged":Z
    :goto_8c
    if-eqz v30, :cond_9a

    .line 1091
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/telecom/ParcelableCall;->getVideoCall(Landroid/telecom/Call;)Landroid/telecom/InCallService$VideoCall;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, mVideoCall:Landroid/telecom/InCallService$VideoCall;

    .line 1094
    :cond_9a
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v28

    .line 1095
    .local v28, "state":I
    move-object/from16 v0, p0

    iget v4, v0, mState:I

    move/from16 v0, v28

    if-eq v4, v0, :cond_14e

    const/16 v29, 0x1

    .line 1097
    .local v29, "stateChanged":Z
    :goto_a8
    move-object/from16 v0, p0

    iget v4, v0, mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_b4

    const/4 v4, 0x2

    move/from16 v0, v28

    if-eq v0, v4, :cond_c0

    :cond_b4
    move-object/from16 v0, p0

    iget v4, v0, mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_c2

    const/4 v4, 0x1

    move/from16 v0, v28

    if-ne v0, v4, :cond_c2

    .line 1099
    :cond_c0
    const/16 v29, 0x0

    .line 1101
    :cond_c2
    if-eqz v29, :cond_ca

    .line 1102
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, mState:I

    .line 1105
    :cond_ca
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getParentCallId()Ljava/lang/String;

    move-result-object v27

    .line 1106
    .local v27, "parentId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, mParentId:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_152

    const/16 v26, 0x1

    .line 1107
    .local v26, "parentChanged":Z
    :goto_dc
    if-eqz v26, :cond_e4

    .line 1108
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, mParentId:Ljava/lang/String;

    .line 1111
    :cond_e4
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v19

    .line 1112
    .local v19, "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, mChildrenIds:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_155

    const/16 v20, 0x1

    .line 1113
    .local v20, "childrenChanged":Z
    :goto_f6
    if-eqz v20, :cond_10f

    .line 1114
    move-object/from16 v0, p0

    iget-object v4, v0, mChildrenIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1115
    move-object/from16 v0, p0

    iget-object v4, v0, mChildrenIds:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1116
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mChildrenCached:Z

    .line 1119
    :cond_10f
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getConferenceableCallIds()Ljava/util/List;

    move-result-object v21

    .line 1120
    .local v21, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1121
    .local v22, "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :cond_122
    :goto_122
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_158

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 1122
    .local v25, "otherId":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_122

    .line 1123
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_122

    .line 1076
    .end local v2    # "cannedTextResponsesChanged":Z
    .end local v19    # "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "childrenChanged":Z
    .end local v21    # "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .end local v23    # "detailsChanged":Z
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v25    # "otherId":Ljava/lang/String;
    .end local v26    # "parentChanged":Z
    .end local v27    # "parentId":Ljava/lang/String;
    .end local v28    # "state":I
    .end local v29    # "stateChanged":Z
    .end local v30    # "videoCallChanged":Z
    :cond_146
    const/16 v23, 0x0

    goto/16 :goto_49

    .line 1088
    .restart local v2    # "cannedTextResponsesChanged":Z
    .restart local v23    # "detailsChanged":Z
    :cond_14a
    const/16 v30, 0x0

    goto/16 :goto_8c

    .line 1095
    .restart local v28    # "state":I
    .restart local v30    # "videoCallChanged":Z
    :cond_14e
    const/16 v29, 0x0

    goto/16 :goto_a8

    .line 1106
    .restart local v27    # "parentId":Ljava/lang/String;
    .restart local v29    # "stateChanged":Z
    :cond_152
    const/16 v26, 0x0

    goto :goto_dc

    .line 1112
    .restart local v19    # "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "parentChanged":Z
    :cond_155
    const/16 v20, 0x0

    goto :goto_f6

    .line 1127
    .restart local v20    # "childrenChanged":Z
    .restart local v21    # "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .restart local v24    # "i$":Ljava/util/Iterator;
    :cond_158
    move-object/from16 v0, p0

    iget-object v4, v0, mConferenceableCalls:Ljava/util/List;

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_177

    .line 1128
    move-object/from16 v0, p0

    iget-object v4, v0, mConferenceableCalls:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1129
    move-object/from16 v0, p0

    iget-object v4, v0, mConferenceableCalls:Ljava/util/List;

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1130
    invoke-direct/range {p0 .. p0}, fireConferenceableCallsChanged()V

    .line 1136
    :cond_177
    if-eqz v29, :cond_182

    .line 1137
    move-object/from16 v0, p0

    iget v4, v0, mState:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, fireStateChanged(I)V

    .line 1139
    :cond_182
    if-eqz v23, :cond_18d

    .line 1140
    move-object/from16 v0, p0

    iget-object v4, v0, mDetails:Landroid/telecom/Call$Details;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, fireDetailsChanged(Landroid/telecom/Call$Details;)V

    .line 1142
    :cond_18d
    if-eqz v2, :cond_198

    .line 1143
    move-object/from16 v0, p0

    iget-object v4, v0, mCannedTextResponses:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, fireCannedTextResponsesLoaded(Ljava/util/List;)V

    .line 1145
    :cond_198
    if-eqz v30, :cond_1a3

    .line 1146
    move-object/from16 v0, p0

    iget-object v4, v0, mVideoCall:Landroid/telecom/InCallService$VideoCall;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, fireVideoCallChanged(Landroid/telecom/InCallService$VideoCall;)V

    .line 1148
    :cond_1a3
    if-eqz v26, :cond_1ae

    .line 1149
    invoke-virtual/range {p0 .. p0}, getParent()Landroid/telecom/Call;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, fireParentChanged(Landroid/telecom/Call;)V

    .line 1151
    :cond_1ae
    if-eqz v20, :cond_1b9

    .line 1152
    invoke-virtual/range {p0 .. p0}, getChildren()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, fireChildrenChanged(Ljava/util/List;)V

    .line 1159
    :cond_1b9
    move-object/from16 v0, p0

    iget v4, v0, mState:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_1c3

    .line 1160
    invoke-direct/range {p0 .. p0}, fireCallDestroyed()V

    .line 1162
    :cond_1c3
    return-void
.end method

.method public mergeConference()V
    .registers 3

    .prologue
    .line 874
    iget-object v0, p0, mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->mergeConference(Ljava/lang/String;)V

    .line 875
    return-void
.end method

.method public phoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V
    .registers 5
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "setDefault"    # Z

    .prologue
    .line 847
    iget-object v0, p0, mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 849
    return-void
.end method

.method public playDtmfTone(C)V
    .registers 4
    .param p1, "digit"    # C

    .prologue
    .line 806
    iget-object v0, p0, mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->playDtmfTone(Ljava/lang/String;C)V

    .line 807
    return-void
.end method

.method public postDialContinue(Z)V
    .registers 4
    .param p1, "proceed"    # Z

    .prologue
    .line 839
    iget-object v0, p0, mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->postDialContinue(Ljava/lang/String;Z)V

    .line 840
    return-void
.end method

.method public registerCallback(Landroid/telecom/Call$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/telecom/Call$Callback;

    .prologue
    .line 977
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, p1, v0}, registerCallback(Landroid/telecom/Call$Callback;Landroid/os/Handler;)V

    .line 978
    return-void
.end method

.method public registerCallback(Landroid/telecom/Call$Callback;Landroid/os/Handler;)V
    .registers 5
    .param p1, "callback"    # Landroid/telecom/Call$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 987
    invoke-virtual {p0, p1}, unregisterCallback(Landroid/telecom/Call$Callback;)V

    .line 989
    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    iget v0, p0, mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_16

    .line 990
    iget-object v0, p0, mCallbackRecords:Ljava/util/List;

    new-instance v1, Landroid/telecom/CallbackRecord;

    invoke-direct {v1, p1, p2}, Landroid/telecom/CallbackRecord;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 992
    :cond_16
    return-void
.end method

.method public reject(ZLjava/lang/String;)V
    .registers 5
    .param p1, "rejectWithMessage"    # Z
    .param p2, "textMessage"    # Ljava/lang/String;

    .prologue
    .line 773
    iget-object v0, p0, mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 774
    return-void
.end method

.method public removeListener(Landroid/telecom/Call$Listener;)V
    .registers 2
    .param p1, "listener"    # Landroid/telecom/Call$Listener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1034
    invoke-virtual {p0, p1}, unregisterCallback(Landroid/telecom/Call$Callback;)V

    .line 1035
    return-void
.end method

.method public splitFromConference()V
    .registers 3

    .prologue
    .line 867
    iget-object v0, p0, mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->splitFromConference(Ljava/lang/String;)V

    .line 868
    return-void
.end method

.method public stopDtmfTone()V
    .registers 3

    .prologue
    .line 817
    iget-object v0, p0, mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->stopDtmfTone(Ljava/lang/String;)V

    .line 818
    return-void
.end method

.method public swapConference()V
    .registers 3

    .prologue
    .line 881
    iget-object v0, p0, mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->swapConference(Ljava/lang/String;)V

    .line 882
    return-void
.end method

.method public unhold()V
    .registers 3

    .prologue
    .line 794
    iget-object v0, p0, mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->unholdCall(Ljava/lang/String;)V

    .line 795
    return-void
.end method

.method public unregisterCallback(Landroid/telecom/Call$Callback;)V
    .registers 6
    .param p1, "callback"    # Landroid/telecom/Call$Callback;

    .prologue
    .line 1001
    if-eqz p1, :cond_24

    iget v2, p0, mState:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_24

    .line 1002
    iget-object v2, p0, mCallbackRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 1003
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_d

    .line 1004
    iget-object v2, p0, mCallbackRecords:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1009
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_24
    return-void
.end method
