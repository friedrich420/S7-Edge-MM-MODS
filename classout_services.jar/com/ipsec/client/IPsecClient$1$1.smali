.class Lcom/ipsec/client/IPsecClient$1$1;
.super Ljava/lang/Object;
.source "IPsecClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ipsec/client/IPsecClient$1;->valueChanged(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ipsec/client/IPsecClient$1;

.field final synthetic val$event:Lcom/ipsec/client/IPsecEvent;

.field final synthetic val$eventData:Lcom/ipsec/client/IPsecEventData;

.field final synthetic val$eventListener:Lcom/ipsec/client/IIPsecListener;


# direct methods
.method constructor <init>(Lcom/ipsec/client/IPsecClient$1;Lcom/ipsec/client/IIPsecListener;Lcom/ipsec/client/IPsecEvent;Lcom/ipsec/client/IPsecEventData;)V
    .registers 5

    .prologue
    .line 486
    iput-object p1, p0, this$1:Lcom/ipsec/client/IPsecClient$1;

    iput-object p2, p0, val$eventListener:Lcom/ipsec/client/IIPsecListener;

    iput-object p3, p0, val$event:Lcom/ipsec/client/IPsecEvent;

    iput-object p4, p0, val$eventData:Lcom/ipsec/client/IPsecEventData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 490
    iget-object v0, p0, val$eventListener:Lcom/ipsec/client/IIPsecListener;

    iget-object v1, p0, val$event:Lcom/ipsec/client/IPsecEvent;

    iget-object v2, p0, val$eventData:Lcom/ipsec/client/IPsecEventData;

    invoke-interface {v0, v1, v2}, Lcom/ipsec/client/IIPsecListener;->onUpdate(Lcom/ipsec/client/IPsecEvent;Lcom/ipsec/client/IPsecEventData;)V

    .line 491
    return-void
.end method
