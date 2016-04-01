.class Landroid/widget/DateTimeView$ReceiverInfo;
.super Ljava/lang/Object;
.source "DateTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DateTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceiverInfo"
.end annotation


# instance fields
.field private final mAttachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/DateTimeView;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Landroid/database/ContentObserver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mAttachedViews:Ljava/util/ArrayList;

    .line 203
    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo$1;

    invoke-direct {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo$1;-><init>(Landroid/widget/DateTimeView$ReceiverInfo;)V

    iput-object v0, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 220
    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/widget/DateTimeView$ReceiverInfo$2;-><init>(Landroid/widget/DateTimeView$ReceiverInfo;Landroid/os/Handler;)V

    iput-object v0, p0, mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/DateTimeView$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/widget/DateTimeView$1;

    .prologue
    .line 201
    invoke-direct {p0}, <init>()V

    return-void
.end method

.method static final getApplicationContextIfAvailable(Landroid/content/Context;)Landroid/content/Context;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 263
    .local v0, "ac":Landroid/content/Context;
    if-eqz v0, :cond_7

    .end local v0    # "ac":Landroid/content/Context;
    :goto_6
    return-object v0

    .restart local v0    # "ac":Landroid/content/Context;
    :cond_7
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method public addView(Landroid/widget/DateTimeView;)V
    .registers 4
    .param p1, "v"    # Landroid/widget/DateTimeView;

    .prologue
    .line 228
    iget-object v1, p0, mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 229
    .local v0, "register":Z
    iget-object v1, p0, mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    if-eqz v0, :cond_18

    .line 231
    invoke-virtual {p1}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, getApplicationContextIfAvailable(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, register(Landroid/content/Context;)V

    .line 233
    :cond_18
    return-void
.end method

.method getSoonestUpdateTime()J
    .registers 8

    .prologue
    .line 250
    const-wide v2, 0x7fffffffffffffffL

    .line 251
    .local v2, "result":J
    iget-object v6, p0, mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 252
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_22

    .line 253
    iget-object v6, p0, mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/DateTimeView;

    # getter for: Landroid/widget/DateTimeView;->mUpdateTimeMillis:J
    invoke-static {v6}, Landroid/widget/DateTimeView;->access$100(Landroid/widget/DateTimeView;)J

    move-result-wide v4

    .line 254
    .local v4, "time":J
    cmp-long v6, v4, v2

    if-gez v6, :cond_1f

    .line 255
    move-wide v2, v4

    .line 252
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 258
    .end local v4    # "time":J
    :cond_22
    return-wide v2
.end method

.method register(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 267
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 268
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 273
    return-void
.end method

.method public removeView(Landroid/widget/DateTimeView;)V
    .registers 3
    .param p1, "v"    # Landroid/widget/DateTimeView;

    .prologue
    .line 236
    iget-object v0, p0, mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p0, mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 238
    invoke-virtual {p1}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, getApplicationContextIfAvailable(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, unregister(Landroid/content/Context;)V

    .line 240
    :cond_18
    return-void
.end method

.method unregister(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 276
    iget-object v0, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 277
    return-void
.end method

.method updateAll()V
    .registers 4

    .prologue
    .line 243
    iget-object v2, p0, mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 244
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 245
    iget-object v2, p0, mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/DateTimeView;

    invoke-virtual {v2}, Landroid/widget/DateTimeView;->clearFormatAndUpdate()V

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 247
    :cond_17
    return-void
.end method
