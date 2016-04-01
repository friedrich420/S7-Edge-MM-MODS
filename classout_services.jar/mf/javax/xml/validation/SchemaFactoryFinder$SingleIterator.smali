.class abstract Lmf/javax/xml/validation/SchemaFactoryFinder$SingleIterator;
.super Ljava/lang/Object;
.source "SchemaFactoryFinder.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/javax/xml/validation/SchemaFactoryFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SingleIterator"
.end annotation


# instance fields
.field private seen:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, seen:Z

    .line 388
    return-void
.end method

.method synthetic constructor <init>(Lmf/javax/xml/validation/SchemaFactoryFinder$SingleIterator;)V
    .registers 2

    .prologue
    .line 388
    invoke-direct {p0}, <init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 392
    iget-boolean v0, p0, seen:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 394
    iget-boolean v0, p0, seen:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 395
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, seen:Z

    .line 396
    invoke-virtual {p0}, value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 391
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract value()Ljava/lang/Object;
.end method
