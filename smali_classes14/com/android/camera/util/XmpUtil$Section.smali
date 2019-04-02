.class Lcom/android/camera/util/XmpUtil$Section;
.super Ljava/lang/Object;
.source "XmpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/XmpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Section"
.end annotation


# instance fields
.field public data:[B

.field public length:I

.field public marker:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/util/XmpUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/util/XmpUtil$1;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/camera/util/XmpUtil$Section;-><init>()V

    return-void
.end method
