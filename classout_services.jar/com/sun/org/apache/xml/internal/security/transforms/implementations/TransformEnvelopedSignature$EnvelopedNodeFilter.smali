.class Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformEnvelopedSignature$EnvelopedNodeFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/signature/NodeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformEnvelopedSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnvelopedNodeFilter"
.end annotation


# instance fields
.field exclude:Lorg/w3c/dom/Node;

.field private final this$0:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformEnvelopedSignature;


# direct methods
.method constructor <init>(Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformEnvelopedSignature;Lorg/w3c/dom/Node;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, this$0:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformEnvelopedSignature;

    iput-object p2, p0, exclude:Lorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method public isNodeInclude(Lorg/w3c/dom/Node;)Z
    .registers 3

    iget-object v0, p0, exclude:Lorg/w3c/dom/Node;

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->isDescendantOrSelf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
