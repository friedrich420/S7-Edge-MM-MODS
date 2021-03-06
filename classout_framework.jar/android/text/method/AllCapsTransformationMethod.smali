.class public Landroid/text/method/AllCapsTransformationMethod;
.super Ljava/lang/Object;
.source "AllCapsTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod2;


# static fields
.field private static final TAG:Ljava/lang/String; = "AllCapsTransformationMethod"


# instance fields
.field private mEnabled:Z

.field private mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, mLocale:Ljava/util/Locale;

    .line 39
    return-void
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 43
    iget-boolean v1, p0, mEnabled:Z

    if-nez v1, :cond_c

    .line 44
    const-string v1, "AllCapsTransformationMethod"

    const-string v2, "Caller did not enable length changes; not transforming text"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .end local p1    # "source":Ljava/lang/CharSequence;
    .end local p2    # "view":Landroid/view/View;
    :goto_b
    return-object p1

    .line 48
    .restart local p1    # "source":Ljava/lang/CharSequence;
    .restart local p2    # "view":Landroid/view/View;
    :cond_c
    if-nez p1, :cond_10

    .line 49
    const/4 p1, 0x0

    goto :goto_b

    .line 52
    :cond_10
    const/4 v0, 0x0

    .line 53
    .local v0, "locale":Ljava/util/Locale;
    instance-of v1, p2, Landroid/widget/TextView;

    if-eqz v1, :cond_1b

    .line 54
    check-cast p2, Landroid/widget/TextView;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    .line 56
    :cond_1b
    if-nez v0, :cond_1f

    .line 57
    iget-object v0, p0, mLocale:Ljava/util/Locale;

    .line 59
    :cond_1f
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_b
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sourceText"    # Ljava/lang/CharSequence;
    .param p3, "focused"    # Z
    .param p4, "direction"    # I
    .param p5, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 65
    return-void
.end method

.method public setLengthChangesAllowed(Z)V
    .registers 2
    .param p1, "allowLengthChanges"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, mEnabled:Z

    .line 70
    return-void
.end method
