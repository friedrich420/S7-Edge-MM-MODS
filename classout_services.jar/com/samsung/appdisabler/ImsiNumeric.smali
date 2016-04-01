.class public Lcom/samsung/appdisabler/ImsiNumeric;
.super Ljava/lang/Object;
.source "ImsiNumeric.java"


# instance fields
.field private imsiNumericBase:Ljava/lang/String;

.field private imsiRangeEnd:Ljava/lang/String;

.field private imsiRangeStart:Ljava/lang/String;

.field private usingMvno:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, imsiNumericBase:Ljava/lang/String;

    .line 12
    iput-object v0, p0, imsiRangeStart:Ljava/lang/String;

    .line 13
    iput-object v0, p0, imsiRangeEnd:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, usingMvno:Z

    return-void
.end method


# virtual methods
.method public getImsiNumericBase()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, imsiNumericBase:Ljava/lang/String;

    return-object v0
.end method

.method public getImsiRangeEnd()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, imsiRangeEnd:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, imsiRangeEnd:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, imsiRangeStart:Ljava/lang/String;

    goto :goto_6
.end method

.method public getImsiRangeStart()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, imsiRangeStart:Ljava/lang/String;

    return-object v0
.end method

.method public isUsingMvno()Z
    .registers 2

    .prologue
    .line 82
    iget-boolean v0, p0, usingMvno:Z

    return v0
.end method

.method public setImsiNumericBase(Ljava/lang/String;)Z
    .registers 3
    .param p1, "imsiNumericBase"    # Ljava/lang/String;

    .prologue
    .line 24
    iget-object v0, p0, imsiNumericBase:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 25
    iput-object p1, p0, imsiNumericBase:Ljava/lang/String;

    .line 26
    const/4 v0, 0x1

    .line 29
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setImsiRangeEnd(Ljava/lang/String;)Z
    .registers 3
    .param p1, "imsiRangeEnd"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, imsiRangeEnd:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 54
    iput-object p1, p0, imsiRangeEnd:Ljava/lang/String;

    .line 55
    const/4 v0, 0x1

    .line 58
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setImsiRangeStart(Ljava/lang/String;)Z
    .registers 3
    .param p1, "imsiRangeStart"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, imsiRangeStart:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 39
    iput-object p1, p0, imsiRangeStart:Ljava/lang/String;

    .line 40
    const/4 v0, 0x1

    .line 43
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setToMvno()V
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, usingMvno:Z

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "imsiNumericBase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, imsiNumericBase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mvno: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, usingMvno:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "imsiRangeStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, imsiRangeStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, imsiRangeEnd:Ljava/lang/String;

    if-eqz v0, :cond_66

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "imsiRangeEnd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, imsiRangeEnd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "imsiRangeEnd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, imsiRangeStart:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_57
.end method

.method public validate()Z
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, imsiNumericBase:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, imsiRangeStart:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 70
    :cond_8
    const/4 v0, 0x0

    .line 73
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method
