.class final Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup$Closure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ValueAndSize"
.end annotation


# instance fields
.field public size:I

.field public value:J


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V
    .registers 7
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    instance-of v0, p2, Landroid/renderscript/Allocation;

    if-eqz v0, :cond_16

    .line 280
    check-cast p2, Landroid/renderscript/Allocation;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2, p1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    iput-wide v0, p0, value:J

    .line 281
    const/4 v0, -0x1

    iput v0, p0, size:I

    .line 298
    :cond_15
    :goto_15
    return-void

    .line 282
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_16
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2c

    .line 283
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    const-wide/16 v0, 0x1

    :goto_24
    iput-wide v0, p0, value:J

    .line 284
    iput v2, p0, size:I

    goto :goto_15

    .line 283
    :cond_29
    const-wide/16 v0, 0x0

    goto :goto_24

    .line 285
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_2c
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_3b

    .line 286
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, value:J

    .line 287
    iput v2, p0, size:I

    goto :goto_15

    .line 288
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3b
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_4a

    .line 289
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, value:J

    .line 290
    iput v3, p0, size:I

    goto :goto_15

    .line 291
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_4a
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_59

    .line 292
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, value:J

    .line 293
    iput v2, p0, size:I

    goto :goto_15

    .line 294
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_59
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_15

    .line 295
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, value:J

    .line 296
    iput v3, p0, size:I

    goto :goto_15
.end method
