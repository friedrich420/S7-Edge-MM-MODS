.class public final Landroid/view/SurfaceControl$PhysicalDisplayInfo;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhysicalDisplayInfo"
.end annotation


# instance fields
.field public appVsyncOffsetNanos:J

.field public colorTransform:I

.field public density:F

.field public height:I

.field public presentationDeadlineNanos:J

.field public refreshRate:F

.field public secure:Z

.field public width:I

.field public xDpi:F

.field public yDpi:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V
    .registers 2
    .param p1, "other"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .prologue
    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    invoke-virtual {p0, p1}, copyFrom(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V

    .line 585
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V
    .registers 4
    .param p1, "other"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .prologue
    .line 612
    iget v0, p1, width:I

    iput v0, p0, width:I

    .line 613
    iget v0, p1, height:I

    iput v0, p0, height:I

    .line 614
    iget v0, p1, refreshRate:F

    iput v0, p0, refreshRate:F

    .line 615
    iget v0, p1, density:F

    iput v0, p0, density:F

    .line 616
    iget v0, p1, xDpi:F

    iput v0, p0, xDpi:F

    .line 617
    iget v0, p1, yDpi:F

    iput v0, p0, yDpi:F

    .line 618
    iget-boolean v0, p1, secure:Z

    iput-boolean v0, p0, secure:Z

    .line 619
    iget-wide v0, p1, appVsyncOffsetNanos:J

    iput-wide v0, p0, appVsyncOffsetNanos:J

    .line 620
    iget-wide v0, p1, presentationDeadlineNanos:J

    iput-wide v0, p0, presentationDeadlineNanos:J

    .line 621
    iget v0, p1, colorTransform:I

    iput v0, p0, colorTransform:I

    .line 622
    return-void
.end method

.method public equals(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z
    .registers 6
    .param p1, "other"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .prologue
    .line 593
    if-eqz p1, :cond_4c

    iget v0, p0, width:I

    iget v1, p1, width:I

    if-ne v0, v1, :cond_4c

    iget v0, p0, height:I

    iget v1, p1, height:I

    if-ne v0, v1, :cond_4c

    iget v0, p0, refreshRate:F

    iget v1, p1, refreshRate:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4c

    iget v0, p0, density:F

    iget v1, p1, density:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4c

    iget v0, p0, xDpi:F

    iget v1, p1, xDpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4c

    iget v0, p0, yDpi:F

    iget v1, p1, yDpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4c

    iget-boolean v0, p0, secure:Z

    iget-boolean v1, p1, secure:Z

    if-ne v0, v1, :cond_4c

    iget-wide v0, p0, appVsyncOffsetNanos:J

    iget-wide v2, p1, appVsyncOffsetNanos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4c

    iget-wide v0, p0, presentationDeadlineNanos:J

    iget-wide v2, p1, presentationDeadlineNanos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4c

    iget v0, p0, colorTransform:I

    iget v1, p1, colorTransform:I

    if-ne v0, v1, :cond_4c

    const/4 v0, 0x1

    :goto_4b
    return v0

    :cond_4c
    const/4 v0, 0x0

    goto :goto_4b
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 589
    instance-of v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, equals(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 608
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhysicalDisplayInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, refreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fps, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "density "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, density:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, xDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, yDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dpi, secure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, secure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appVsyncOffset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, appVsyncOffsetNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bufferDeadline "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, presentationDeadlineNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", colorTransform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, colorTransform:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
