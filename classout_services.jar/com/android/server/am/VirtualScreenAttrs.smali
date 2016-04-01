.class public Lcom/android/server/am/VirtualScreenAttrs;
.super Ljava/lang/Object;
.source "VirtualScreenAttrs.java"


# instance fields
.field private mBaseActivity:Z

.field private mBaseDisplayId:I

.field private mDisplayId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, mDisplayId:I

    .line 31
    iput v0, p0, mBaseDisplayId:I

    .line 32
    iput-boolean v0, p0, mBaseActivity:Z

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "displayId"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, mDisplayId:I

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/VirtualScreenAttrs;)V
    .registers 2
    .param p1, "attrs"    # Lcom/android/server/am/VirtualScreenAttrs;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, setTo(Lcom/android/server/am/VirtualScreenAttrs;)V

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseActivity()Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, mBaseActivity:Z

    return v0
.end method

.method public getBaseDisplayId()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, mBaseDisplayId:I

    return v0
.end method

.method public getDisplayId()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, mDisplayId:I

    return v0
.end method

.method public setBaseActivity(Z)V
    .registers 2
    .param p1, "baseActivity"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, mBaseActivity:Z

    .line 64
    return-void
.end method

.method public setBaseDisplayId(I)V
    .registers 2
    .param p1, "displayId"    # I

    .prologue
    .line 55
    iput p1, p0, mBaseDisplayId:I

    .line 56
    return-void
.end method

.method public setDisplayId(I)V
    .registers 2
    .param p1, "displayId"    # I

    .prologue
    .line 47
    iput p1, p0, mDisplayId:I

    .line 48
    return-void
.end method

.method public setTo(Lcom/android/server/am/VirtualScreenAttrs;)V
    .registers 3
    .param p1, "other"    # Lcom/android/server/am/VirtualScreenAttrs;

    .prologue
    .line 72
    iget v0, p1, mDisplayId:I

    iput v0, p0, mDisplayId:I

    .line 73
    iget v0, p1, mDisplayId:I

    iput v0, p0, mBaseDisplayId:I

    .line 74
    iget-boolean v0, p1, mBaseActivity:Z

    iput-boolean v0, p0, mBaseActivity:Z

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 79
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string/jumbo v1, "{mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", mBaseDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mBaseDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", mBaseActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mBaseActivity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
