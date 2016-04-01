.class public Lmf/org/apache/xerces/dom/events/EventImpl;
.super Ljava/lang/Object;
.source "EventImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/events/Event;


# instance fields
.field public bubbles:Z

.field public cancelable:Z

.field public currentTarget:Lmf/org/w3c/dom/events/EventTarget;

.field public eventPhase:S

.field public initialized:Z

.field public preventDefault:Z

.field public stopPropagation:Z

.field public target:Lmf/org/w3c/dom/events/EventTarget;

.field protected timeStamp:J

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, type:Ljava/lang/String;

    .line 41
    iput-boolean v1, p0, initialized:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, bubbles:Z

    iput-boolean v1, p0, cancelable:Z

    .line 42
    iput-boolean v1, p0, stopPropagation:Z

    iput-boolean v1, p0, preventDefault:Z

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, timeStamp:J

    .line 35
    return-void
.end method


# virtual methods
.method public getBubbles()Z
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, bubbles:Z

    return v0
.end method

.method public getCancelable()Z
    .registers 2

    .prologue
    .line 78
    iget-boolean v0, p0, cancelable:Z

    return v0
.end method

.method public getCurrentTarget()Lmf/org/w3c/dom/events/EventTarget;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, currentTarget:Lmf/org/w3c/dom/events/EventTarget;

    return-object v0
.end method

.method public getEventPhase()S
    .registers 2

    .prologue
    .line 96
    iget-short v0, p0, eventPhase:S

    return v0
.end method

.method public getTarget()Lmf/org/w3c/dom/events/EventTarget;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, target:Lmf/org/w3c/dom/events/EventTarget;

    return-object v0
.end method

.method public getTimeStamp()J
    .registers 3

    .prologue
    .line 115
    iget-wide v0, p0, timeStamp:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, type:Ljava/lang/String;

    return-object v0
.end method

.method public initEvent(Ljava/lang/String;ZZ)V
    .registers 5
    .param p1, "eventTypeArg"    # Ljava/lang/String;
    .param p2, "canBubbleArg"    # Z
    .param p3, "cancelableArg"    # Z

    .prologue
    .line 58
    iput-object p1, p0, type:Ljava/lang/String;

    .line 59
    iput-boolean p2, p0, bubbles:Z

    .line 60
    iput-boolean p3, p0, cancelable:Z

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, initialized:Z

    .line 62
    return-void
.end method

.method public preventDefault()V
    .registers 2

    .prologue
    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, preventDefault:Z

    .line 134
    return-void
.end method

.method public stopPropagation()V
    .registers 2

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, stopPropagation:Z

    .line 126
    return-void
.end method
