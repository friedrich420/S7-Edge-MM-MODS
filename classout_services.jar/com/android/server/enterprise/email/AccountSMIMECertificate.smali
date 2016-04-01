.class Lcom/android/server/enterprise/email/AccountSMIMECertificate;
.super Ljava/lang/Object;
.source "AccountsReceiver.java"


# instance fields
.field public mCxtInfo:Landroid/app/enterprise/ContextInfo;

.field public mPassword:Ljava/lang/String;

.field public mPath:Ljava/lang/String;

.field public sMode:I


# direct methods
.method public constructor <init>(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p2, p0, mPath:Ljava/lang/String;

    .line 244
    iput-object p3, p0, mPassword:Ljava/lang/String;

    .line 245
    iput p4, p0, sMode:I

    .line 246
    iput-object p1, p0, mCxtInfo:Landroid/app/enterprise/ContextInfo;

    .line 247
    return-void
.end method
