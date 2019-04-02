.class Lcom/android/camera/watermark/TencentWebService$TencentConst;
.super Ljava/lang/Object;
.source "TencentWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/watermark/TencentWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TencentConst"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final POIS:Ljava/lang/String; = "pois"

.field public static final RESULT:Ljava/lang/String; = "result"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_SUCCESS:I = 0x0

.field public static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field final synthetic this$0:Lcom/android/camera/watermark/TencentWebService;


# direct methods
.method private constructor <init>(Lcom/android/camera/watermark/TencentWebService;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/camera/watermark/TencentWebService$TencentConst;->this$0:Lcom/android/camera/watermark/TencentWebService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
