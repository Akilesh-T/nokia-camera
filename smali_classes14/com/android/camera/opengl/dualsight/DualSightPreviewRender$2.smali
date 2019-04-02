.class Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;
.super Ljava/lang/Object;
.source "DualSightPreviewRender.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->getTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final OFFSET_THRESHOLD:F = 0.01f


# instance fields
.field private mLastPointF:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;


# direct methods
.method constructor <init>(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    .prologue
    .line 1668
    iput-object p1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1674
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v15

    if-nez v15, :cond_0

    const/4 v15, 0x0

    .line 1832
    :goto_0
    return v15

    .line 1675
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1800(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v16

    monitor-enter v16

    .line 1676
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1800(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v15

    if-nez v15, :cond_12

    .line 1677
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v15

    packed-switch v15, :pswitch_data_0

    .line 1684
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$2200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v17

    monitor-enter v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1685
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$2200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1686
    const/4 v15, 0x0

    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v16

    goto :goto_0

    .line 1831
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v15

    .line 1679
    :pswitch_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/GestureChangedListener;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 1680
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/GestureChangedListener;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/camera/opengl/GestureChangedListener;->onTouch()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1688
    :cond_2
    :try_start_4
    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1690
    :try_start_5
    sget-object v15, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;->$SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$2000(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->getCurrentDualSightMode()Lcom/android/camera/opengl/dualsight/DualSightMode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/opengl/dualsight/DualSightMode;->ordinal()I

    move-result v17

    aget v15, v15, v17

    packed-switch v15, :pswitch_data_1

    .line 1826
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1902(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;Z)Z

    .line 1827
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->mLastPointF:Landroid/graphics/PointF;

    .line 1828
    const/4 v15, 0x0

    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1688
    :catchall_1
    move-exception v15

    :try_start_6
    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v15

    .line 1693
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1900(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Z

    move-result v12

    .line 1694
    .local v12, "previousMovingSubWindow":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v15

    packed-switch v15, :pswitch_data_2

    .line 1750
    :cond_3
    :goto_2
    :pswitch_2
    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1900(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Z

    move-result v15

    if-eqz v15, :cond_a

    :cond_4
    const/4 v15, 0x1

    :goto_3
    monitor-exit v16

    goto/16 :goto_0

    .line 1698
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/android/camera/util/ProductModelUtil;->settingNotchEnable(Landroid/content/Context;)Z

    move-result v5

    .line 1699
    .local v5, "isNotch":Z
    if-eqz v5, :cond_5

    .line 1700
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/android/camera/util/ProductModelUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v13

    .line 1701
    .local v13, "statusbarHeight":I
    int-to-float v15, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$700(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v17

    div-float v7, v15, v17

    .line 1706
    .end local v13    # "statusbarHeight":I
    .local v7, "offsetY":F
    :goto_4
    new-instance v10, Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$2300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v17

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$2300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v17

    div-float v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->height()F

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    sub-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$700(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v18

    sub-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$700(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v18

    div-float v17, v17, v18

    move/from16 v0, v17

    invoke-direct {v10, v15, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1707
    .local v10, "pointF":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$2000(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->getSubWindowRect()Landroid/graphics/RectF;

    move-result-object v14

    .line 1708
    .local v14, "subWindowRect":Landroid/graphics/RectF;
    iget v15, v10, Landroid/graphics/PointF;->x:F

    iget v0, v14, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    cmpl-float v15, v15, v17

    if-lez v15, :cond_6

    iget v15, v10, Landroid/graphics/PointF;->x:F

    iget v0, v14, Landroid/graphics/RectF;->right:F

    move/from16 v17, v0

    cmpg-float v15, v15, v17

    if-gez v15, :cond_6

    iget v15, v10, Landroid/graphics/PointF;->y:F

    add-float/2addr v15, v7

    iget v0, v14, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    cmpg-float v15, v15, v17

    if-gez v15, :cond_6

    iget v15, v10, Landroid/graphics/PointF;->y:F

    add-float/2addr v15, v7

    iget v0, v14, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v0

    cmpl-float v15, v15, v17

    if-lez v15, :cond_6

    const/4 v4, 0x1

    .line 1713
    .local v4, "isInSubWindow":Z
    :goto_5
    if-eqz v4, :cond_7

    .line 1714
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1902(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;Z)Z

    .line 1715
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->mLastPointF:Landroid/graphics/PointF;

    .line 1716
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$2000(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    move-result-object v15

    const/16 v17, 0x9

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    .line 1717
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/GestureChangedListener;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 1718
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/GestureChangedListener;

    move-result-object v15

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Lcom/android/camera/opengl/GestureChangedListener;->onMoveStarted(Z)V

    goto/16 :goto_2

    .line 1703
    .end local v4    # "isInSubWindow":Z
    .end local v7    # "offsetY":F
    .end local v10    # "pointF":Landroid/graphics/PointF;
    .end local v14    # "subWindowRect":Landroid/graphics/RectF;
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "offsetY":F
    goto/16 :goto_4

    .line 1708
    .restart local v10    # "pointF":Landroid/graphics/PointF;
    .restart local v14    # "subWindowRect":Landroid/graphics/RectF;
    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    .line 1719
    .restart local v4    # "isInSubWindow":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1900(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1720
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v15

    const-string v17, "default_scope"

    const-string v18, "pref_camera_screen_pip_pos_top"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$2000(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->getSubWindowRect()Landroid/graphics/RectF;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v15

    const-string v17, "default_scope"

    const-string v18, "pref_camera_screen_pip_pos_right"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$2000(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->getSubWindowRect()Landroid/graphics/RectF;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1902(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;Z)Z

    .line 1723
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->mLastPointF:Landroid/graphics/PointF;

    .line 1724
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$2000(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    move-result-object v15

    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    .line 1725
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/GestureChangedListener;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 1726
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/GestureChangedListener;

    move-result-object v15

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Lcom/android/camera/opengl/GestureChangedListener;->onMoveStopped(Z)V

    goto/16 :goto_2

    .line 1728
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1902(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;Z)Z

    .line 1729
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->mLastPointF:Landroid/graphics/PointF;

    goto/16 :goto_2

    .line 1734
    .end local v4    # "isInSubWindow":Z
    .end local v5    # "isNotch":Z
    .end local v7    # "offsetY":F
    .end local v10    # "pointF":Landroid/graphics/PointF;
    .end local v14    # "subWindowRect":Landroid/graphics/RectF;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1900(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1735
    new-instance v10, Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->width()F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->width()F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    div-float v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->height()F

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    sub-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v18

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v18

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    div-float v17, v17, v18

    move/from16 v0, v17

    invoke-direct {v10, v15, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1737
    .restart local v10    # "pointF":Landroid/graphics/PointF;
    iget v15, v10, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->mLastPointF:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    sub-float v8, v15, v17

    .line 1738
    .local v8, "offset_x":F
    iget v15, v10, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->mLastPointF:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    sub-float v9, v15, v17

    .line 1740
    .local v9, "offset_y":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const v17, 0x3c23d70a    # 0.01f

    cmpl-float v15, v15, v17

    if-gez v15, :cond_9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const v17, 0x3c23d70a    # 0.01f

    cmpl-float v15, v15, v17

    if-lez v15, :cond_3

    .line 1741
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$2000(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    move-result-object v15

    const/16 v17, 0xa

    const/16 v18, 0x0

    const/16 v19, 0x0

    new-instance v20, Landroid/graphics/PointF;

    move-object/from16 v0, v20

    invoke-direct {v0, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    .line 1742
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->mLastPointF:Landroid/graphics/PointF;

    goto/16 :goto_2

    .line 1750
    .end local v8    # "offset_x":F
    .end local v9    # "offset_y":F
    .end local v10    # "pointF":Landroid/graphics/PointF;
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 1753
    .end local v12    # "previousMovingSubWindow":Z
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$800(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Z

    move-result v11

    .line 1755
    .local v11, "previousMovingLineWindow":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v15

    packed-switch v15, :pswitch_data_3

    .line 1809
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$802(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;Z)Z

    .line 1810
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->mLastPointF:Landroid/graphics/PointF;

    .line 1811
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$2000(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    move-result-object v15

    const/16 v17, 0xf

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    .line 1813
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$2000(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->getLineWindowRect()Landroid/graphics/RectF;

    move-result-object v6

    .line 1814
    .local v6, "lineWindowRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v17

    const/high16 v18, 0x3f800000    # 1.0f

    add-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$402(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;F)F

    .line 1816
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    new-instance v17, Landroid/graphics/RectF;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->height()F

    move-result v21

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v23

    sub-float v22, v22, v23

    mul-float v21, v21, v22

    invoke-direct/range {v17 .. v21}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$502(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 1817
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/GestureChangedListener;

    move-result-object v15

    if-eqz v15, :cond_b

    .line 1818
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/GestureChangedListener;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$500(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Lcom/android/camera/opengl/GestureChangedListener;->onMoving(Landroid/graphics/RectF;)V

    .line 1819
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/GestureChangedListener;

    move-result-object v15

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v15, v0}, Lcom/android/camera/opengl/GestureChangedListener;->onMoveStopped(Z)V

    .line 1824
    .end local v6    # "lineWindowRect":Landroid/graphics/RectF;
    :cond_b
    :goto_6
    if-nez v11, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$800(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Z

    move-result v15

    if-eqz v15, :cond_11

    :cond_c
    const/4 v15, 0x1

    :goto_7
    monitor-exit v16

    goto/16 :goto_0

    .line 1757
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$2400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 1760
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/android/camera/util/ProductModelUtil;->settingNotchEnable(Landroid/content/Context;)Z

    move-result v5

    .line 1762
    .restart local v5    # "isNotch":Z
    if-eqz v5, :cond_d

    .line 1763
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/android/camera/util/ProductModelUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v13

    .line 1764
    .restart local v13    # "statusbarHeight":I
    int-to-float v15, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$700(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v17

    div-float v7, v15, v17

    .line 1769
    .end local v13    # "statusbarHeight":I
    .restart local v7    # "offsetY":F
    :goto_8
    new-instance v10, Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$2300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v17

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$2300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v17

    div-float v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->height()F

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    sub-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$700(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v18

    sub-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$700(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v18

    div-float v17, v17, v18

    move/from16 v0, v17

    invoke-direct {v10, v15, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1770
    .restart local v10    # "pointF":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$2000(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->getLineWindowRect()Landroid/graphics/RectF;

    move-result-object v6

    .line 1772
    .restart local v6    # "lineWindowRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v17, v0

    iget v15, v10, Landroid/graphics/PointF;->x:F

    iget v0, v6, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    const v19, 0x3dcccccd    # 0.1f

    sub-float v18, v18, v19

    cmpl-float v15, v15, v18

    if-lez v15, :cond_e

    iget v15, v10, Landroid/graphics/PointF;->x:F

    iget v0, v6, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    const v19, 0x3dcccccd    # 0.1f

    add-float v18, v18, v19

    cmpg-float v15, v15, v18

    if-gez v15, :cond_e

    iget v15, v10, Landroid/graphics/PointF;->y:F

    add-float/2addr v15, v7

    iget v0, v6, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    const v19, 0x3dcccccd    # 0.1f

    add-float v18, v18, v19

    cmpg-float v15, v15, v18

    if-gez v15, :cond_e

    iget v15, v10, Landroid/graphics/PointF;->y:F

    add-float/2addr v15, v7

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    move/from16 v18, v0

    const v19, 0x3dcccccd    # 0.1f

    sub-float v18, v18, v19

    cmpl-float v15, v15, v18

    if-lez v15, :cond_e

    const/4 v15, 0x1

    :goto_9
    move-object/from16 v0, v17

    invoke-static {v0, v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$802(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;Z)Z

    .line 1777
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$800(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1778
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->mLastPointF:Landroid/graphics/PointF;

    .line 1779
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$2000(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    move-result-object v15

    const/16 v17, 0xd

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    .line 1780
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/GestureChangedListener;

    move-result-object v15

    if-eqz v15, :cond_b

    .line 1781
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/GestureChangedListener;

    move-result-object v15

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v15, v0}, Lcom/android/camera/opengl/GestureChangedListener;->onMoveStarted(Z)V

    goto/16 :goto_6

    .line 1766
    .end local v6    # "lineWindowRect":Landroid/graphics/RectF;
    .end local v7    # "offsetY":F
    .end local v10    # "pointF":Landroid/graphics/PointF;
    :cond_d
    const/4 v7, 0x0

    .restart local v7    # "offsetY":F
    goto/16 :goto_8

    .line 1772
    .restart local v6    # "lineWindowRect":Landroid/graphics/RectF;
    .restart local v10    # "pointF":Landroid/graphics/PointF;
    :cond_e
    const/4 v15, 0x0

    goto :goto_9

    .line 1787
    .end local v5    # "isNotch":Z
    .end local v6    # "lineWindowRect":Landroid/graphics/RectF;
    .end local v7    # "offsetY":F
    .end local v10    # "pointF":Landroid/graphics/PointF;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$800(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Z

    move-result v15

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$2400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 1788
    new-instance v10, Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->width()F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->width()F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    div-float v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->height()F

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    sub-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v18

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v18

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    div-float v17, v17, v18

    move/from16 v0, v17

    invoke-direct {v10, v15, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1790
    .restart local v10    # "pointF":Landroid/graphics/PointF;
    iget v15, v10, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->mLastPointF:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    sub-float v8, v15, v17

    .line 1791
    .restart local v8    # "offset_x":F
    iget v15, v10, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->mLastPointF:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    sub-float v9, v15, v17

    .line 1793
    .restart local v9    # "offset_y":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const v17, 0x3c23d70a    # 0.01f

    cmpl-float v15, v15, v17

    if-gez v15, :cond_f

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const v17, 0x3c23d70a    # 0.01f

    cmpl-float v15, v15, v17

    if-lez v15, :cond_10

    .line 1794
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$2000(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    move-result-object v15

    const/16 v17, 0xe

    const/16 v18, 0x0

    const/16 v19, 0x0

    new-instance v20, Landroid/graphics/PointF;

    move-object/from16 v0, v20

    invoke-direct {v0, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    .line 1795
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->mLastPointF:Landroid/graphics/PointF;

    .line 1797
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$2000(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->getLineWindowRect()Landroid/graphics/RectF;

    move-result-object v6

    .line 1798
    .restart local v6    # "lineWindowRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v17

    const/high16 v18, 0x3f800000    # 1.0f

    add-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$402(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;F)F

    .line 1800
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    new-instance v17, Landroid/graphics/RectF;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->height()F

    move-result v21

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v23

    sub-float v22, v22, v23

    mul-float v21, v21, v22

    invoke-direct/range {v17 .. v21}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$502(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 1802
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/GestureChangedListener;

    move-result-object v15

    if-eqz v15, :cond_b

    .line 1803
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v15}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/GestureChangedListener;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$2;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$500(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Lcom/android/camera/opengl/GestureChangedListener;->onMoving(Landroid/graphics/RectF;)V

    goto/16 :goto_6

    .line 1824
    .end local v6    # "lineWindowRect":Landroid/graphics/RectF;
    .end local v8    # "offset_x":F
    .end local v9    # "offset_y":F
    .end local v10    # "pointF":Landroid/graphics/PointF;
    :cond_11
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 1831
    .end local v11    # "previousMovingLineWindow":Z
    :cond_12
    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1832
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1677
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1690
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1694
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 1755
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method
