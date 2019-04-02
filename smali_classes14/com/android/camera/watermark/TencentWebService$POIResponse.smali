.class public interface abstract Lcom/android/camera/watermark/TencentWebService$POIResponse;
.super Ljava/lang/Object;
.source "TencentWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/watermark/TencentWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "POIResponse"
.end annotation


# static fields
.field public static final ERROR_NETWORK:I = 0x1

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_REQUEST:I = 0x2


# virtual methods
.method public abstract onResult(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
