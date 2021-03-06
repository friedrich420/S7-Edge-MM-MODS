.class Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;
.super Lcom/android/internal/textservice/ISpellCheckerSession$Stub;
.source "SpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textservice/SpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalISpellCheckerSession"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

.field private final mLocale:Ljava/lang/String;

.field private final mSession:Landroid/service/textservice/SpellCheckerService$Session;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;Landroid/service/textservice/SpellCheckerService$Session;)V
    .registers 5
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "session"    # Landroid/service/textservice/SpellCheckerService$Session;

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/android/internal/textservice/ISpellCheckerSession$Stub;-><init>()V

    .line 244
    iput-object p2, p0, mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 245
    iput-object p4, p0, mSession:Landroid/service/textservice/SpellCheckerService$Session;

    .line 246
    iput-object p1, p0, mLocale:Ljava/lang/String;

    .line 247
    iput-object p3, p0, mBundle:Landroid/os/Bundle;

    .line 248
    invoke-virtual {p4, p0}, Landroid/service/textservice/SpellCheckerService$Session;->setInternalISpellCheckerSession(Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;)V

    .line 249
    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, mLocale:Ljava/lang/String;

    return-object v0
.end method

.method public onCancel()V
    .registers 3

    .prologue
    .line 277
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 279
    .local v0, "pri":I
    const/16 v1, 0xa

    :try_start_a
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 280
    iget-object v1, p0, mSession:Landroid/service/textservice/SpellCheckerService$Session;

    invoke-virtual {v1}, Landroid/service/textservice/SpellCheckerService$Session;->onCancel()V
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_16

    .line 282
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 284
    return-void

    .line 282
    :catchall_16
    move-exception v1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    throw v1
.end method

.method public onClose()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 288
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 290
    .local v0, "pri":I
    const/16 v1, 0xa

    :try_start_b
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 291
    iget-object v1, p0, mSession:Landroid/service/textservice/SpellCheckerService$Session;

    invoke-virtual {v1}, Landroid/service/textservice/SpellCheckerService$Session;->onClose()V
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_19

    .line 293
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 294
    iput-object v2, p0, mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 296
    return-void

    .line 293
    :catchall_19
    move-exception v1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 294
    iput-object v2, p0, mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    throw v1
.end method

.method public onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V
    .registers 5
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I

    .prologue
    .line 269
    :try_start_0
    iget-object v0, p0, mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    iget-object v1, p0, mSession:Landroid/service/textservice/SpellCheckerService$Session;

    invoke-virtual {v1, p1, p2}, Landroid/service/textservice/SpellCheckerService$Session;->onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)[Landroid/view/textservice/SentenceSuggestionsInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 273
    :goto_b
    return-void

    .line 271
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V
    .registers 7
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I
    .param p3, "sequentialWords"    # Z

    .prologue
    .line 254
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 256
    .local v0, "pri":I
    const/16 v1, 0xa

    :try_start_a
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 257
    iget-object v1, p0, mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    iget-object v2, p0, mSession:Landroid/service/textservice/SpellCheckerService$Session;

    invoke-virtual {v2, p1, p2, p3}, Landroid/service/textservice/SpellCheckerService$Session;->onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)[Landroid/view/textservice/SuggestionsInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_18} :catch_1c
    .catchall {:try_start_a .. :try_end_18} :catchall_21

    .line 262
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 264
    :goto_1b
    return-void

    .line 260
    :catch_1c
    move-exception v1

    .line 262
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_1b

    :catchall_21
    move-exception v1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    throw v1
.end method
