.class public Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315ExclWithComments;
.super Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315Excl;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315Excl;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final engineGetIncludeComments()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final engineGetURI()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "http://www.w3.org/2001/10/xml-exc-c14n#WithComments"

    return-object v0
.end method
