.class Lcom/android/camera/one/v2/core/RequestTemplate$Parameter;
.super Ljava/lang/Object;
.source "RequestTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/core/RequestTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Parameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final key:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final value:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;",
            "Lcom/google/common/base/Supplier",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/android/camera/one/v2/core/RequestTemplate$Parameter;, "Lcom/android/camera/one/v2/core/RequestTemplate$Parameter<TT;>;"
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "value":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/camera/one/v2/core/RequestTemplate$Parameter;->key:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 52
    iput-object p2, p0, Lcom/android/camera/one/v2/core/RequestTemplate$Parameter;->value:Lcom/google/common/base/Supplier;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;Lcom/android/camera/one/v2/core/RequestTemplate$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/hardware/camera2/CaptureRequest$Key;
    .param p2, "x1"    # Lcom/google/common/base/Supplier;
    .param p3, "x2"    # Lcom/android/camera/one/v2/core/RequestTemplate$1;

    .prologue
    .line 46
    .local p0, "this":Lcom/android/camera/one/v2/core/RequestTemplate$Parameter;, "Lcom/android/camera/one/v2/core/RequestTemplate$Parameter<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/core/RequestTemplate$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)V

    return-void
.end method


# virtual methods
.method public addToBuilder(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 2
    .param p1, "builder"    # Lcom/android/camera/one/v2/core/RequestBuilder;

    .prologue
    .line 56
    .local p0, "this":Lcom/android/camera/one/v2/core/RequestTemplate$Parameter;, "Lcom/android/camera/one/v2/core/RequestTemplate$Parameter<TT;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/core/RequestTemplate$Parameter;->key:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera/one/v2/core/RequestTemplate$Parameter;->value:Lcom/google/common/base/Supplier;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 57
    return-void
.end method
