.class Lcom/facebook/share/internal/LikeActionController$7;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->publishLikeAsync(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;

.field final synthetic val$analyticsParameters:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$7;->val$analyticsParameters:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 6

    .prologue
    .line 1009
    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v3}, Lcom/facebook/share/internal/LikeActionController;->access$1600(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1011
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1012
    .local v0, "errorBundle":Landroid/os/Bundle;
    const-string v3, "com.facebook.platform.status.ERROR_DESCRIPTION"

    const-string v4, "Invalid Object Id"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const-string v4, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-static {v3, v4, v0}, Lcom/facebook/share/internal/LikeActionController;->access$1500(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1056
    .end local v0    # "errorBundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 1024
    :cond_0
    new-instance v2, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v2}, Lcom/facebook/GraphRequestBatch;-><init>()V

    .line 1025
    .local v2, "requestBatch":Lcom/facebook/GraphRequestBatch;
    new-instance v1, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1026
    invoke-static {v4}, Lcom/facebook/share/internal/LikeActionController;->access$1600(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v5}, Lcom/facebook/share/internal/LikeActionController;->access$1700(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1027
    .local v1, "likeRequest":Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;
    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;->addToBatch(Lcom/facebook/GraphRequestBatch;)V

    .line 1028
    new-instance v3, Lcom/facebook/share/internal/LikeActionController$7$1;

    invoke-direct {v3, p0, v1}, Lcom/facebook/share/internal/LikeActionController$7$1;-><init>(Lcom/facebook/share/internal/LikeActionController$7;Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;)V

    invoke-virtual {v2, v3}, Lcom/facebook/GraphRequestBatch;->addCallback(Lcom/facebook/GraphRequestBatch$Callback;)V

    .line 1055
    invoke-virtual {v2}, Lcom/facebook/GraphRequestBatch;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    goto :goto_0
.end method
