.class public Lcom/android/camera/product_utils/ProductUtil;
.super Ljava/lang/Object;
.source "ProductUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/product_utils/ProductUtil$Video;,
        Lcom/android/camera/product_utils/ProductUtil$DesignSpec;
    }
.end annotation


# static fields
.field public static final BUILD_NICKNAME:Ljava/lang/String;

.field public static final BURST_ENCODE_QUALITY:I

.field public static final CAPTURE_BY_TOUCH_IN_VIDEO:Z = false

.field public static final DEBUG_FACEPP_3A:Z

.field public static final DEBUG_IMAGE_EXIF:Z

.field public static final DELAY_FACE_SWITCH:Z = false

.field public static final DISABLE_COVER_ANIMATION:Z = true

.field public static final DISABLE_FLASH_WHEN_LOW_POWER:Z = true

.field public static final DISABLE_THUMBNAIL_ANIMATION:Z = false

.field public static final DUALCAM_LINK_ENABLE:Z

.field public static final DUAL_SYNC_TIMEOUT_MS:J

.field public static final DUMP_ROI:Z

.field public static final DUMP_YUV_IMAGE:Z

.field public static final ENABLE_ADVANCED_MANUAL_MODE:Z = true

.field public static final ENABLE_CAMERA_WARM_START:Z = true

.field public static final ENABLE_HEADING_BY_DEFAULT:Z = false

.field public static final ENABLE_INFINITE_DUAL_SIGHT:Z = true

.field public static final ENABLE_PINCH_ZOOM_BOOST:Z = true

.field public static final ENABLE_RAW_CAPTURE:Z

.field public static final ENABLE_TWICE_SHOT:Z = true

.field public static final EXPOSURE_SCALE:F

.field public static final IS_USE_FIHUNDISTORTION:Z

.field public static final IS_USE_PSMODEL:Z

.field public static final JPEG_ENCODE_QUALITY:I

.field public static final JPEG_QUALITY:I

.field public static final LISTEN_PHONE_STATE:Z = false

.field public static final LISTEN_STORAGE_STATE:Z = true

.field public static final LOCK_ORIENTATION:Z = true

.field public static final LONG_PRESS_SHUTTER_TO_BURST:Z = true

.field public static final NEED_FOCUS_IN_ZSL_CAPTURE:Z = false

.field public static final NEED_WARMUP_PREVIEW_FOR_ZSL:Z = false

.field public static final OVERRIDE_SCREEN_BRIGHTMESS:Z = false

.field private static final PERSIST_BURST_ENCODE_QUALITY:Ljava/lang/String; = "persist.camera.burst_enc_qlity"

.field public static final PERSIST_CAMERA_CAP_INTENT:Ljava/lang/String; = "persist.camera.cap.intent"

.field public static final PERSIST_CAMERA_LIB2D_ROTATION:Ljava/lang/String; = "vendor.camera.c2d.rotation"

.field private static final PERSIST_CAM_USE_VENDOR_HDR:Ljava/lang/String; = "persist.vendor.camera.ven_hdr"

.field private static final PERSIST_DEBUG_IMAGE_EXIF:Ljava/lang/String; = "persist.camera.debug_img_exif"

.field private static final PERSIST_DUALCAM_LINK_ENABLE:Ljava/lang/String; = "persist.dualcam.link_enable"

.field private static final PERSIST_DUAL_SYNC_TIME_MS:Ljava/lang/String; = "persist.dual.sync_timeout_ms"

.field public static final PERSIST_DUMP_ROI:Ljava/lang/String; = "persist.camera.dump_roi"

.field public static final PERSIST_DUMP_YUV_IMAGE:Ljava/lang/String; = "persist.camera.dump_yuv_img"

.field private static final PERSIST_ENABLE_RAW_CAPTURE:Ljava/lang/String; = "persist.camera.raw_cap.enable"

.field private static final PERSIST_FACEPP_3A_DEBUG:Ljava/lang/String; = "persist.camera.facepp.3A"

.field private static final PERSIST_HDR_EXP_SCALE:Ljava/lang/String; = "persist.camera.hdr_level"

.field private static final PERSIST_JPEG_ENCODE_QUALITY:Ljava/lang/String; = "persist.camera.jpeg_enc_qlity"

.field public static final PERSIST_SELFIE_USE_PSMODEL:Ljava/lang/String; = "persist.camera.use.psmodel"

.field public static final PERSIST_SHOW_FACE_POINT:Ljava/lang/String; = "persist.camera.show_face_point"

.field public static final PERSIST_SHOW_SCENE_DETECTION:Ljava/lang/String; = "persist.camera.show_scene_detection"

.field private static final PERSIST_USE_CHS_SESSION:Ljava/lang/String; = "persist.camera.use_chs_session"

.field public static final PERSIST_USE_DEVICE_OPERATED_ZSL:Ljava/lang/String; = "persist.camera.use_dev_zsl"

.field public static final PERSIST_USE_FIHUNDISTORTION:Ljava/lang/String; = "persist.camera.use.fih_undistortion"

.field public static final PERSIST_USE_REPROCESS:Ljava/lang/String; = "persist.camera.use_reprocess"

.field public static final ROUNDED_MEGA_PIXEL_FORMAT:Z = true

.field public static final RO_PRODUCT_NICKNAME:Ljava/lang/String; = "ro.product.nickname"

.field public static final SHOW_CAF_INDICATOR:Z = true

.field public static final SHOW_FACE_POINT:Z

.field public static final SHOW_FACE_VIEW:Z = true

.field public static final SHOW_SCENE_DETECTION:Z

.field public static final SHOW_ZOOM_ALWAYS:Z

.field public static final SHOW_ZOOM_ON_SCREEN:Z

.field public static final TOAST_CAP_MODE:Z

.field public static final USE_API2_PORTBILITY:Z = false

.field public static final USE_ARCSOFT_BEAUTY_PICSELFIE_POST_PROCESS:Z = true

.field public static final USE_ARCSOFT_DENOISE_POST_PROCESS:Z = true

.field public static final USE_ARCSOFT_HDR_POST_PROCESS:Z = true

.field public static final USE_ARCSOFT_NIGHT_SHOT_POST_PROCESS:Z = true

.field public static final USE_BEAUTY_LEVEL:Z = true

.field public static final USE_CAPTURE_MODULE:Z

.field public static final USE_CHS_SESSION:Z

.field public static final USE_DEVICE_OPERATED_ZSL:Z

.field public static final USE_DUAL_CAM:Z = true

.field public static final USE_FILMSTRIP:Z = false

.field public static final USE_GOOGLE_LENS:Z

.field public static final USE_GOOGLE_PHOTO:Z

.field public static final USE_MANUAL_FOCUS:Z = true

.field public static final USE_METERING_MODE:Z = true

.field public static final USE_NORMAL_PHOTO_POST_PROCESS:Z = true

.field public static final USE_PIP:Z = true

.field public static final USE_POST_PROCESS:Z = true

.field public static final USE_REPROCESS:Z

.field public static final USE_SCREEN_FLASH:Z = true

.field public static final USE_SLOW_MOTION:Z = true

.field public static final USE_SWIPE_MODE_LIST:Z = true

.field public static final USE_SWIPE_SWITCH_MODE:Z = true

.field public static final USE_VENDOR_HDR:Z

.field public static final USE_WITH_18x9_LAYOUT_IN_PIP:Z

.field public static final WORK_AROUND_STREAM_MAPPING:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 29
    const-string v0, "persist.camera.cap.intent"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->TOAST_CAP_MODE:Z

    .line 32
    const-string v0, "persist.camera.dump_roi"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->DUMP_ROI:Z

    .line 35
    const-string v0, "persist.camera.dump_yuv_img"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->DUMP_YUV_IMAGE:Z

    .line 38
    const-string v0, "persist.camera.show_face_point"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->SHOW_FACE_POINT:Z

    .line 41
    const-string v0, "persist.camera.show_scene_detection"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->SHOW_SCENE_DETECTION:Z

    .line 44
    const-string v0, "persist.camera.use.psmodel"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->IS_USE_PSMODEL:Z

    .line 47
    const-string v0, "persist.camera.use.fih_undistortion"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->IS_USE_FIHUNDISTORTION:Z

    .line 49
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(I)I

    move-result v0

    sput v0, Lcom/android/camera/product_utils/ProductUtil;->JPEG_QUALITY:I

    .line 52
    const-string v0, "ro.product.nickname"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/product_utils/ProductUtil;->BUILD_NICKNAME:Ljava/lang/String;

    .line 53
    const-string v0, "persist.camera.jpeg_enc_qlity"

    const-string v1, "100"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/camera/product_utils/ProductUtil;->JPEG_ENCODE_QUALITY:I

    .line 54
    const-string v0, "persist.camera.burst_enc_qlity"

    const-string v1, "85"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/camera/product_utils/ProductUtil;->BURST_ENCODE_QUALITY:I

    .line 55
    const/high16 v0, 0x40400000    # 3.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "persist.camera.hdr_level"

    const-string v3, "2.0"

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Lcom/android/camera/product_utils/ProductUtil;->EXPOSURE_SCALE:F

    .line 56
    const-string v0, "persist.camera.debug_img_exif"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->DEBUG_IMAGE_EXIF:Z

    .line 57
    const-string v0, "persist.camera.facepp.3A"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->DEBUG_FACEPP_3A:Z

    .line 58
    const-string v0, "persist.camera.raw_cap.enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->ENABLE_RAW_CAPTURE:Z

    .line 59
    const-string v0, "persist.dualcam.link_enable"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->DUALCAM_LINK_ENABLE:Z

    .line 60
    const-string v0, "persist.dual.sync_timeout_ms"

    const-string v1, "10"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/android/camera/product_utils/ProductUtil;->DUAL_SYNC_TIMEOUT_MS:J

    .line 61
    const-string v0, "persist.camera.use_chs_session"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->USE_CHS_SESSION:Z

    .line 65
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isHAL3Enabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->USE_CAPTURE_MODULE:Z

    .line 68
    const-string v0, "persist.camera.use_dev_zsl"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->USE_DEVICE_OPERATED_ZSL:Z

    .line 69
    const-string v0, "persist.camera.use_reprocess"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->USE_REPROCESS:Z

    .line 72
    const-string v0, "persist.vendor.camera.ven_hdr"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->USE_VENDOR_HDR:Z

    .line 73
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isGMSAvailable()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->USE_GOOGLE_PHOTO:Z

    .line 77
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isGMSAvailable()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->USE_GOOGLE_LENS:Z

    .line 106
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isAllowZoomView()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->SHOW_ZOOM_ON_SCREEN:Z

    .line 107
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqZoomViewAlwaysShow()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->SHOW_ZOOM_ALWAYS:Z

    .line 121
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->is18x9Layout()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->USE_WITH_18x9_LAYOUT_IN_PIP:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupportedLib2DRotate()Z
    .locals 2

    .prologue
    .line 126
    const-string v0, "vendor.camera.c2d.rotation"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
