.class Lcom/google/lens/sdk/LensApi$1;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "LensApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/lens/sdk/LensApi;->launchLensActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/lens/sdk/LensApi;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/lens/sdk/LensApi;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/lens/sdk/LensApi;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/lens/sdk/LensApi$1;->this$0:Lcom/google/lens/sdk/LensApi;

    iput-object p2, p0, Lcom/google/lens/sdk/LensApi$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .locals 2

    .prologue
    .line 154
    const-string v0, "LensApi"

    const-string v1, "Keyguard dismiss cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method public onDismissError()V
    .locals 2

    .prologue
    .line 149
    const-string v0, "LensApi"

    const-string v1, "Error dismissing keyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public onDismissSucceeded()V
    .locals 2

    .prologue
    .line 143
    const-string v0, "LensApi"

    const-string v1, "Keyguard successfully dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/google/lens/sdk/LensApi$1;->this$0:Lcom/google/lens/sdk/LensApi;

    iget-object v1, p0, Lcom/google/lens/sdk/LensApi$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/google/lens/sdk/LensApi;->access$100(Lcom/google/lens/sdk/LensApi;Landroid/app/Activity;)V

    .line 145
    return-void
.end method
