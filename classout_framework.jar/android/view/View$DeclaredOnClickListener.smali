.class Landroid/view/View$DeclaredOnClickListener;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeclaredOnClickListener"
.end annotation


# instance fields
.field private final mHostView:Landroid/view/View;

.field private mMethod:Ljava/lang/reflect/Method;

.field private final mMethodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .registers 3
    .param p1, "hostView"    # Landroid/view/View;
    .param p2, "methodName"    # Ljava/lang/String;

    .prologue
    .line 4723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4724
    iput-object p1, p0, mHostView:Landroid/view/View;

    .line 4725
    iput-object p2, p0, mMethodName:Ljava/lang/String;

    .line 4726
    return-void
.end method

.method private resolveMethod(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 4747
    :goto_0
    if-eqz p1, :cond_29

    .line 4749
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 4750
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, mMethodName:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/view/View;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_19} :catch_1b

    move-result-object v2

    return-object v2

    .line 4752
    :catch_1b
    move-exception v2

    .line 4756
    :cond_1c
    instance-of v2, p1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_27

    .line 4757
    check-cast p1, Landroid/content/ContextWrapper;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .restart local p1    # "context":Landroid/content/Context;
    goto :goto_0

    .line 4760
    :cond_27
    const/4 p1, 0x0

    goto :goto_0

    .line 4764
    :cond_29
    iget-object v2, p0, mHostView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v0

    .line 4765
    .local v0, "id":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_69

    const-string v1, ""

    .line 4767
    .local v1, "idText":Ljava/lang/String;
    :goto_34
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mMethodName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(View) in a parent or ancestor Context for android:onClick "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "attribute defined on view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mHostView:Landroid/view/View;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4765
    .end local v1    # "idText":Ljava/lang/String;
    :cond_69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " with id \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mHostView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_34
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4730
    iget-object v1, p0, mMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_12

    .line 4731
    iget-object v1, p0, mHostView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, mMethodName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, resolveMethod(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, mMethod:Ljava/lang/reflect/Method;

    .line 4735
    :cond_12
    :try_start_12
    iget-object v1, p0, mMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, mHostView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_23} :catch_24
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_23} :catch_2d

    .line 4743
    return-void

    .line 4736
    :catch_24
    move-exception v0

    .line 4737
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not execute non-public method for android:onClick"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 4739
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2d
    move-exception v0

    .line 4740
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not execute method for android:onClick"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
