.class public Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
.super Landroid/database/MatrixCursor;
.source "EnterpriseMatrixCursor.java"


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 2
    .param p1, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public setBundle(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, setExtras(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method
