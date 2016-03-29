.class Lcom/android/settings/LGTRoamingEnv$9;
.super Ljava/lang/Object;
.source "LGTRoamingEnv.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LGTRoamingEnv;->updateCountryInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LGTRoamingEnv;


# direct methods
.method constructor <init>(Lcom/android/settings/LGTRoamingEnv;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/settings/LGTRoamingEnv$9;->this$0:Lcom/android/settings/LGTRoamingEnv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 461
    # getter for: Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/LGTRoamingEnv;->access$200()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e1504

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 463
    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv$9;->this$0:Lcom/android/settings/LGTRoamingEnv;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/settings/LGTRoamingEnv;->access$102(Lcom/android/settings/LGTRoamingEnv;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 464
    return-void
.end method
