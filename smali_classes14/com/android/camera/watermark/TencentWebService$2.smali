.class Lcom/android/camera/watermark/TencentWebService$2;
.super Ljava/lang/Object;
.source "TencentWebService.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/watermark/TencentWebService;->requestPOI(DDLcom/android/camera/watermark/TencentWebService$POIResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/watermark/TencentWebService;

.field final synthetic val$mPOIResponse:Lcom/android/camera/watermark/TencentWebService$POIResponse;


# direct methods
.method constructor <init>(Lcom/android/camera/watermark/TencentWebService;Lcom/android/camera/watermark/TencentWebService$POIResponse;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/watermark/TencentWebService;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/camera/watermark/TencentWebService$2;->this$0:Lcom/android/camera/watermark/TencentWebService;

    iput-object p2, p0, Lcom/android/camera/watermark/TencentWebService$2;->val$mPOIResponse:Lcom/android/camera/watermark/TencentWebService$POIResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/watermark/TencentWebService$2;->val$mPOIResponse:Lcom/android/camera/watermark/TencentWebService$POIResponse;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/camera/watermark/TencentWebService$2;->val$mPOIResponse:Lcom/android/camera/watermark/TencentWebService$POIResponse;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/camera/watermark/TencentWebService$POIResponse;->onResult(ILjava/util/List;)V

    .line 101
    :cond_0
    return-void
.end method
