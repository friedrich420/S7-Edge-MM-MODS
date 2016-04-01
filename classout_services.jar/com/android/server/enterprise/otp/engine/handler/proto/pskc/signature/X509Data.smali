.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;
.super Ljava/lang/Object;
.source "X509Data.java"


# instance fields
.field private mX509Certificate:[B

.field private mX509Crl:[B

.field private mX509IssuerName:Ljava/lang/String;

.field private mX509SerialNumber:I

.field private mX509Ski:[B

.field private mX509SubjectName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getX509Certificate()[B
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, mX509Certificate:[B

    return-object v0
.end method

.method public getX509Crl()[B
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, mX509Crl:[B

    return-object v0
.end method

.method public getX509IssuerName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, mX509IssuerName:Ljava/lang/String;

    return-object v0
.end method

.method public getX509SerialNumber()I
    .registers 2

    .prologue
    .line 21
    iget v0, p0, mX509SerialNumber:I

    return v0
.end method

.method public getX509Ski()[B
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, mX509Ski:[B

    return-object v0
.end method

.method public getX509SubjectName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, mX509SubjectName:Ljava/lang/String;

    return-object v0
.end method

.method public setX509Certificate([B)V
    .registers 2
    .param p1, "mX509Certificate"    # [B

    .prologue
    .line 49
    iput-object p1, p0, mX509Certificate:[B

    .line 50
    return-void
.end method

.method public setX509Crl([B)V
    .registers 2
    .param p1, "mX509Crl"    # [B

    .prologue
    .line 57
    iput-object p1, p0, mX509Crl:[B

    .line 58
    return-void
.end method

.method public setX509IssuerName(Ljava/lang/String;)V
    .registers 2
    .param p1, "mX509IssuerName"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, mX509IssuerName:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setX509SerialNumber(I)V
    .registers 2
    .param p1, "mX509SerialNumber"    # I

    .prologue
    .line 25
    iput p1, p0, mX509SerialNumber:I

    .line 26
    return-void
.end method

.method public setX509Ski([B)V
    .registers 2
    .param p1, "mX509Ski"    # [B

    .prologue
    .line 33
    iput-object p1, p0, mX509Ski:[B

    .line 34
    return-void
.end method

.method public setX509SubjectName(Ljava/lang/String;)V
    .registers 2
    .param p1, "mX509SubjectName"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, mX509SubjectName:Ljava/lang/String;

    .line 42
    return-void
.end method
