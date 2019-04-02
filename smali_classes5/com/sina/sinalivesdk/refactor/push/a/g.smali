.class public final Lcom/sina/sinalivesdk/refactor/push/a/g;
.super Lcom/sina/sinalivesdk/refactor/push/a/a;


# instance fields
.field private c:Lcom/sina/sinalivesdk/refactor/push/l;


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/refactor/push/l;)V
    .locals 0

    invoke-direct {p0}, Lcom/sina/sinalivesdk/refactor/push/a/a;-><init>()V

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/push/a/g;->c:Lcom/sina/sinalivesdk/refactor/push/l;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/a/g;->c:Lcom/sina/sinalivesdk/refactor/push/l;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/push/a/g;->a:Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;

    iget-object v3, p0, Lcom/sina/sinalivesdk/refactor/push/a/g;->b:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2, v3}, Lcom/sina/sinalivesdk/refactor/push/l;->a(ILcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "RequestResponseHandler"

    return-object v0
.end method
