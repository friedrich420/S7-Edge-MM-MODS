.class Lmf/javax/xml/xpath/XPathFactoryFinder$2;
.super Ljava/lang/Object;
.source "XPathFactoryFinder.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/javax/xml/xpath/XPathFactoryFinder;->createServiceFileIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/javax/xml/xpath/XPathFactoryFinder;

.field private final synthetic val$e:Ljava/util/Enumeration;


# direct methods
.method constructor <init>(Lmf/javax/xml/xpath/XPathFactoryFinder;Ljava/util/Enumeration;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, this$0:Lmf/javax/xml/xpath/XPathFactoryFinder;

    iput-object p2, p0, val$e:Ljava/util/Enumeration;

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 521
    iget-object v0, p0, val$e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 525
    iget-object v0, p0, val$e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 517
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
