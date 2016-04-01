.class public final Landroid/view/MotionEvent$PointerProperties;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerProperties"
.end annotation


# instance fields
.field public id:I

.field public toolType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4070
    invoke-virtual {p0}, clear()V

    .line 4071
    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent$PointerProperties;)V
    .registers 2
    .param p1, "other"    # Landroid/view/MotionEvent$PointerProperties;

    .prologue
    .line 4078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4079
    invoke-virtual {p0, p1}, copyFrom(Landroid/view/MotionEvent$PointerProperties;)V

    .line 4080
    return-void
.end method

.method static synthetic access$000(Landroid/view/MotionEvent$PointerProperties;Landroid/view/MotionEvent$PointerProperties;)Z
    .registers 3
    .param p0, "x0"    # Landroid/view/MotionEvent$PointerProperties;
    .param p1, "x1"    # Landroid/view/MotionEvent$PointerProperties;

    .prologue
    .line 4065
    invoke-direct {p0, p1}, equals(Landroid/view/MotionEvent$PointerProperties;)Z

    move-result v0

    return v0
.end method

.method public static createArray(I)[Landroid/view/MotionEvent$PointerProperties;
    .registers 4
    .param p0, "size"    # I

    .prologue
    .line 4084
    new-array v0, p0, [Landroid/view/MotionEvent$PointerProperties;

    .line 4085
    .local v0, "array":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p0, :cond_f

    .line 4086
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, <init>()V

    aput-object v2, v0, v1

    .line 4085
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4088
    :cond_f
    return-object v0
.end method

.method private equals(Landroid/view/MotionEvent$PointerProperties;)Z
    .registers 4
    .param p1, "other"    # Landroid/view/MotionEvent$PointerProperties;

    .prologue
    .line 4134
    if-eqz p1, :cond_10

    iget v0, p0, id:I

    iget v1, p1, id:I

    if-ne v0, v1, :cond_10

    iget v0, p0, toolType:I

    iget v1, p1, toolType:I

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 4111
    const/4 v0, -0x1

    iput v0, p0, id:I

    .line 4112
    const/4 v0, 0x0

    iput v0, p0, toolType:I

    .line 4113
    return-void
.end method

.method public copyFrom(Landroid/view/MotionEvent$PointerProperties;)V
    .registers 3
    .param p1, "other"    # Landroid/view/MotionEvent$PointerProperties;

    .prologue
    .line 4121
    iget v0, p1, id:I

    iput v0, p0, id:I

    .line 4122
    iget v0, p1, toolType:I

    iput v0, p0, toolType:I

    .line 4123
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 4127
    instance-of v0, p1, Landroid/view/MotionEvent$PointerProperties;

    if-eqz v0, :cond_b

    .line 4128
    check-cast p1, Landroid/view/MotionEvent$PointerProperties;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-direct {p0, p1}, equals(Landroid/view/MotionEvent$PointerProperties;)Z

    move-result v0

    .line 4130
    :goto_a
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 4139
    iget v0, p0, id:I

    iget v1, p0, toolType:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method
