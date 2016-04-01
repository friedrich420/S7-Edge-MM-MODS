.class Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
.super Ljava/lang/Object;
.source "LDAPAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/LDAPAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LDAPServiceConnection"
.end annotation


# instance fields
.field mBindComplete:Landroid/os/ConditionVariable;

.field mCallingUserId:I

.field mConnection:Landroid/content/ServiceConnection;

.field mLDAPInterfaceReceiver:Landroid/content/BroadcastReceiver;

.field mService:Landroid/app/enterprise/ILDAPInterface;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, mCallingUserId:I

    .line 92
    iput-object v1, p0, mService:Landroid/app/enterprise/ILDAPInterface;

    .line 93
    iput-object v1, p0, mLDAPInterfaceReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    iput-object v1, p0, mConnection:Landroid/content/ServiceConnection;

    .line 95
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, mBindComplete:Landroid/os/ConditionVariable;

    .line 96
    return-void
.end method


# virtual methods
.method getCallingUserId()I
    .registers 2

    .prologue
    .line 119
    iget v0, p0, mCallingUserId:I

    return v0
.end method

.method getConnection()Landroid/content/ServiceConnection;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method getReceiver()Landroid/content/BroadcastReceiver;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, mLDAPInterfaceReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method getService()Landroid/app/enterprise/ILDAPInterface;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, mService:Landroid/app/enterprise/ILDAPInterface;

    return-object v0
.end method

.method setCallingUserId(I)V
    .registers 2
    .param p1, "id"    # I

    .prologue
    .line 103
    iput p1, p0, mCallingUserId:I

    .line 104
    return-void
.end method

.method setReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 2
    .param p1, "interfaceReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 107
    iput-object p1, p0, mLDAPInterfaceReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    return-void
.end method

.method setService(Landroid/app/enterprise/ILDAPInterface;)V
    .registers 2
    .param p1, "service"    # Landroid/app/enterprise/ILDAPInterface;

    .prologue
    .line 99
    iput-object p1, p0, mService:Landroid/app/enterprise/ILDAPInterface;

    .line 100
    return-void
.end method

.method setServiceConnection(Landroid/content/ServiceConnection;)V
    .registers 2
    .param p1, "connection"    # Landroid/content/ServiceConnection;

    .prologue
    .line 111
    iput-object p1, p0, mConnection:Landroid/content/ServiceConnection;

    .line 112
    return-void
.end method
