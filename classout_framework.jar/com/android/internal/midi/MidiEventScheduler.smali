.class public Lcom/android/internal/midi/MidiEventScheduler;
.super Lcom/android/internal/midi/EventScheduler;
.source "MidiEventScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/midi/MidiEventScheduler$1;,
        Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;,
        Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;
    }
.end annotation


# static fields
.field private static final POOL_EVENT_SIZE:I = 0x10

.field private static final TAG:Ljava/lang/String; = "MidiEventScheduler"


# instance fields
.field private mReceiver:Landroid/media/midi/MidiReceiver;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/internal/midi/EventScheduler;-><init>()V

    .line 31
    new-instance v0, Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;-><init>(Lcom/android/internal/midi/MidiEventScheduler;Lcom/android/internal/midi/MidiEventScheduler$1;)V

    iput-object v0, p0, mReceiver:Landroid/media/midi/MidiReceiver;

    .line 53
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/midi/MidiEventScheduler;[BIIJ)Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    .registers 8
    .param p0, "x0"    # Lcom/android/internal/midi/MidiEventScheduler;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # J

    .prologue
    .line 26
    invoke-direct/range {p0 .. p5}, createScheduledEvent([BIIJ)Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    move-result-object v0

    return-object v0
.end method

.method private createScheduledEvent([BIIJ)Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    .registers 14
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x10

    .line 85
    if-le p3, v1, :cond_f

    .line 86
    new-instance v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;-><init>([BIIJLcom/android/internal/midi/MidiEventScheduler$1;)V

    .line 96
    .local v0, "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :goto_e
    return-object v0

    .line 88
    .end local v0    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :cond_f
    invoke-virtual {p0}, removeEventfromPool()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v0

    check-cast v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    .line 89
    .restart local v0    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    if-nez v0, :cond_1c

    .line 90
    new-instance v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    .end local v0    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    invoke-direct {v0, v1, v6}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;-><init>(ILcom/android/internal/midi/MidiEventScheduler$1;)V

    .line 92
    .restart local v0    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :cond_1c
    iget-object v1, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 93
    iput p3, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    .line 94
    invoke-virtual {v0, p4, p5}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->setTimestamp(J)V

    goto :goto_e
.end method


# virtual methods
.method public addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .prologue
    .line 107
    instance-of v1, p1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    if-eqz v1, :cond_11

    move-object v0, p1

    .line 108
    check-cast v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    .line 109
    .local v0, "midiEvent":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    iget-object v1, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    array-length v1, v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_11

    .line 110
    invoke-super {p0, p1}, Lcom/android/internal/midi/EventScheduler;->addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    .line 113
    .end local v0    # "midiEvent":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :cond_11
    return-void
.end method

.method public getReceiver()Landroid/media/midi/MidiReceiver;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, mReceiver:Landroid/media/midi/MidiReceiver;

    return-object v0
.end method
