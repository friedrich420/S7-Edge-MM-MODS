.class public abstract Landroid/view/ActionMode;
.super Ljava/lang/Object;
.source "ActionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ActionMode$Callback2;,
        Landroid/view/ActionMode$Callback;
    }
.end annotation


# static fields
.field public static final DEFAULT_HIDE_DURATION:I = -0x1

.field public static final TYPE_FLOATING:I = 0x1

.field public static final TYPE_FLOATING_TW:I = 0x63

.field public static final TYPE_PRIMARY:I


# instance fields
.field private mDelayMili:I

.field private mTag:Ljava/lang/Object;

.field private mTitleOptionalHint:Z

.field private mType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, mType:I

    .line 66
    const/4 v0, -0x1

    iput v0, p0, mDelayMili:I

    .line 372
    return-void
.end method


# virtual methods
.method public abstract finish()V
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getMenu()Landroid/view/Menu;
.end method

.method public abstract getMenuInflater()Landroid/view/MenuInflater;
.end method

.method public getMovingOffDelay()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, mDelayMili:I

    return v0
.end method

.method public abstract getSubtitle()Ljava/lang/CharSequence;
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public getTitleOptionalHint()Z
    .registers 2

    .prologue
    .line 181
    iget-boolean v0, p0, mTitleOptionalHint:Z

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 219
    iget v0, p0, mType:I

    return v0
.end method

.method public hide(J)V
    .registers 3
    .param p1, "duration"    # J

    .prologue
    .line 251
    return-void
.end method

.method public abstract invalidate()V
.end method

.method public invalidateContentRect()V
    .registers 1

    .prologue
    .line 238
    return-void
.end method

.method public isTitleOptional()Z
    .registers 2

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public isUiFocusable()Z
    .registers 2

    .prologue
    .line 307
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 296
    return-void
.end method

.method public abstract setCustomView(Landroid/view/View;)V
.end method

.method public setMovingOffDelay(I)V
    .registers 2
    .param p1, "miliSec"    # I

    .prologue
    .line 72
    iput p1, p0, mDelayMili:I

    .line 73
    return-void
.end method

.method public abstract setSubtitle(I)V
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 93
    iput-object p1, p0, mTag:Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public abstract setTitle(I)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public setTitleOptionalHint(Z)V
    .registers 2
    .param p1, "titleOptional"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, mTitleOptionalHint:Z

    .line 171
    return-void
.end method

.method public setType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 210
    iput p1, p0, mType:I

    .line 211
    return-void
.end method
