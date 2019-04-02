.class public Lcom/android/camera/app/GalleryStyleAdapter$DrawTopCornerImage;
.super Ljava/lang/Object;
.source "GalleryStyleAdapter.java"

# interfaces
.implements Lcom/android/camera/app/GalleryStyleAdapter$DrawCornerImage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/GalleryStyleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DrawTopCornerImage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/GalleryStyleAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/app/GalleryStyleAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/GalleryStyleAdapter;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/camera/app/GalleryStyleAdapter$DrawTopCornerImage;->this$0:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawCornerImage(Landroid/graphics/Canvas;Landroid/graphics/Paint;FII)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "radius"    # F
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 509
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p4

    int-to-float v2, p5

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 511
    return-void
.end method
