.class final Lcom/google/lens/sdk/LensApi$LensSdkParamsCallback;
.super Ljava/lang/Object;
.source "LensApi.java"

# interfaces
.implements Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$LensSdkParamsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/lens/sdk/LensApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LensSdkParamsCallback"
.end annotation


# instance fields
.field private final lensAvailabilityCallback:Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;


# direct methods
.method constructor <init>(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/google/lens/sdk/LensApi$LensSdkParamsCallback;->lensAvailabilityCallback:Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;

    .line 104
    return-void
.end method


# virtual methods
.method public onLensSdkParamsAvailable(Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;)V
    .locals 2
    .param p1, "params"    # Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/lens/sdk/LensApi$LensSdkParamsCallback;->lensAvailabilityCallback:Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;

    iget v1, p1, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensAvailabilityStatus:I

    .line 109
    invoke-static {v1}, Lcom/google/lens/sdk/LensApi;->access$000(I)I

    move-result v1

    .line 108
    invoke-interface {v0, v1}, Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;->onAvailabilityStatusFetched(I)V

    .line 110
    return-void
.end method
