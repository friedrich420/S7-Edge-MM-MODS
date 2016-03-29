.class Lcom/android/systemui/statusbar/policy/SignalController$State;
.super Ljava/lang/Object;
.source "SignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field activityIn:Z

.field activityOut:Z

.field connected:Z

.field enabled:Z

.field iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

.field inetCondition:I

.field level:I

.field rssi:I

.field time:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/statusbar/policy/SignalController$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/policy/SignalController$State;

    .prologue
    .line 265
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    .line 266
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    .line 267
    iget v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    .line 268
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 269
    iget v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    .line 270
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    .line 271
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    .line 272
    iget v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->rssi:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->rssi:I

    .line 273
    iget-wide v0, p1, Lcom/android/systemui/statusbar/policy/SignalController$State;->time:J

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->time:J

    .line 274
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 301
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 305
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 304
    check-cast v0, Lcom/android/systemui/statusbar/policy/SignalController$State;

    .line 305
    .local v0, "other":Lcom/android/systemui/statusbar/policy/SignalController$State;
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/SignalController$State;->rssi:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->rssi:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 278
    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->time:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SignalController$State;->toString(Ljava/lang/StringBuilder;)V

    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v2, 0x2c

    .line 288
    const-string v0, "connected="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->connected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "inetCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->inetCondition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iconGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "activityIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "activityOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->activityOut:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->rssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MM-dd hh:mm:ss"

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/SignalController$State;->time:J

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 297
    return-void
.end method
