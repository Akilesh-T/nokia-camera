.class final Lcom/sina/sinalivesdk/refactor/push/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;

.field private synthetic b:Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;

.field private synthetic c:Ljava/util/HashMap;

.field private synthetic d:Z


# direct methods
.method constructor <init>(Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/push/a/d;->a:Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;

    iput-object p2, p0, Lcom/sina/sinalivesdk/refactor/push/a/d;->b:Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;

    iput-object p3, p0, Lcom/sina/sinalivesdk/refactor/push/a/d;->c:Ljava/util/HashMap;

    iput-boolean p4, p0, Lcom/sina/sinalivesdk/refactor/push/a/d;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/ReceiveChatMessage;

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/a/d;->a:Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sina/sinalivesdk/refactor/messages/ReceiveChatMessage;-><init>(Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;J)V

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/push/a/d;->b:Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/push/a/d;->c:Ljava/util/HashMap;

    iget-boolean v3, p0, Lcom/sina/sinalivesdk/refactor/push/a/d;->d:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/sina/sinalivesdk/refactor/messages/ReceiveChatMessage;->parse(Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;Z)I

    return-void
.end method
