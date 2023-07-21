import 'package:flutter/material.dart';
import '../../../utils/constance.dart';
import '../../../utils/styles.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        title: const Text(
          'شروط الاستخدام',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: 12.0),
        children: const [
          SizedBox(height: 17.0,),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'سياسة الخصوصية لتطبيق طاير\n',
                  style: StyleManager.titleStyle14,
                ),
                TextSpan(
                  text: ' \nتحكم سياسة الخصوصية الأسلوب الذي تقوم به " طاير " بجمع، واستخدام، والحفاظ والتصريح بالمعلومات التي تم جمعها من قبل مستخدمين تطبيق مرسول وتطبق سياسة الخصوصية هذه في التطبيق وكافة المنتجات والخدمات المقدمة من مرسول.\n\nمعلومات الهوية الشخصية:\n\nيقوم طاير بجمع معلومات عن الهوية الشخصية من المستخدمين بطرق مختلفة، وتشمل ولا تقتصر فقط على أوقات زيارة المستخدم للتطبيق، التسجيل في تطبيق طاير ، ملىء الطلب، نموذج تحليل الإستبيان، وغير ذلك من الأنشطة، والخدمات، والميزات أو المصادر التي قد نوفرها على تطبيقنا. قد يُطلب من المستخدمين توضيح الاسم بشكل كامل، وعنوان البريد الإلكتروني، ورقم الهاتف، وبيانات بطاقة الائتمان.\n\nمعلومات لا تتعلق بالهوية الشخصية:\n\nيقوم طاير بجمع بعض المعلومات عن المستخدمين اينما تفاعلوا مع التطبيق, وهذه المعلومات لا تتعلق بالهوية الشخصية انما قد تتضمن نوع الهاتف الذكي و معلومات تقنية عن اساليب إتصال المستخدم بالتطبيق, مثل الشركة المستخدمة لتقديم خدمة الانترنت وغيرها من المعلومات المشابهة.\n\nكيف نقوم باستخدام المعلومات التي تم جمعها:\n\nيقوم مرسول بجمع واستخدام المعلومات الشخصية للمستخدمين في الأغراض التالية:\n\nتحسين جودة خدمة العملاء.\n\n تساعدنا المعلومات الخاصة بك على سهولة الاستجابة لطلباتك الموجهة لخدمة العملاء واحتياجاتك للدعم بشكل أكثر فاعلية.\n\nلتحسين التطبيق.\n\n  نسعى باستمرار لتحسين العروض المقدمة من خلال التطبيق او موقعنا الالكتروني وفقاً للمعلومات والملاحظات التي نتلقاها منك.\n\nإرسال رسائل الكترونية بشكل دوري.\n\nعنوان البريد الالكتروني الذي يسجله المستخدمون للتعامل مع طلبهم، سوف يستخدم فقط في إرسال معلومات وتحديثات لهم تتعلق بطلبهم. وقد يُستخدم أيضاً في الاستجابة للاستفسارات، أو غيرها من الطلبات أو الأسئلة. وإذا قرر المستخدم الانضمام إلى قائمة مراسلاتنا، فإنه سوف يتلقى رسائل على بريده الإلكتروني قد تتضمن أخبار ، آخر التحديثات، ومعلومات تتعلق بالتطبيق. وإذا أراد المستخدم في أي وقت إلغاء تسجيل تلقي أي رسائل مستقبلية، فإننا نقدم له توجيهات مفصلة حول إلغاء التسجيل في نهاية كل رسالة على بريده الالكتروني، او يمكن للمستخدم التواصل معنا من خلال التطبيق او موقعنا الالكتروني.\n\nكيف نقوم بحماية معلوماتك:\n\nنحن نتبع الإجراءات السليمة ومعايير الأمان في جمع وحفظ والتعامل مع البيانات، وذلك لحماية تلك البيانات ضد التعامل غير المصرح به، أو التعديل، أو الإفصاح أو إتلاف بياناتك الشخصية، واسم المستخدم، وكلمة المرور، ومعلومات تخص تعاملاتك والبيانات المخزنة على تطبيقنا. يتم تبادل البيانات الحساسة والخاصة بين مرسولومستخدميه من خلال قنوات اتصال مؤمنة ويتم تشفيرها وحمايتها من خلال طرق وأساليب رقمية معتمدة.\n \n\nمشاركة البيانات الشخصية:\n\nنحن في مرسول لا نقوم ببيع، أو المتاجرة، أو تأجير بيانات الهوية الشخصية الخاصة بالمستخدمين إلى جهات أخرى، وقد نشارك المعلومات الديموغرافية العامة المجمعة والتي لا ترتبط بأي معلومات عن الهوية الشخصية الخاصة بالزائرين والمستخدمين مع شركاءنا، والشركات التابعة والمعلنين وذلك للأغراض الموضحة أعلاه. وقد نستخدم طرف ثالث مقدم للخدمة ليساعدنا في تسيير أعمالنا وأيضاً في عمل التطبيق أو في إدارة الأنشطة بالنيابة عنا، مثل إرسال النشرات الإخبارية أو الدراسات الاستقصائية. قد نشارك بياناتك مع هذا الطرف الثالث في حدود تلك الأغراض المحددة في حالة أنك أعطيت لنا إذن بذلك.\n\nكما أننا لانشارك بياناتك مع أي جهة رسمية حكومية إلا بخطاب رسمي موجه لشركتنا بالإفصاح عن بياناتك شخصيًا في حالات أمنية أو جنائية.\n\nالمواقع الخاصة بالطرف الثالث:\n\nقد يجد المستخدمون إعلانات أو غيرها من المحتويات على تطبيقنا تحمل روابط لمواقع وخدمات شركائنا، أو الموردين، أو المعلنين، أو الراعين، أو مانحي التراخيص، أو غيرهم من الكيانات التي تمثل الطرف الثالث. وينبغي العلم بأننا لا نتحكم في المحتوى أو الروابط التي تظهر على تلك المواقع ولسنا مسئولين عن الممارسات التي تقوم بها المواقع المرتبطة بموقعنا. بالإضافة إلى ذلك، فإن تلك المواقع أو الخدمات، وتشمل المحتوى والروابط، قد تتغير باستمرار. وهذه المواقع والخدمات يكون لديها سياسة الخصوصية وسياسات خدمة العملاء الخاصة بها. كما أن التصفح والتفاعل على أي موقع آخر، بما في ذلك المواقع التي تحمل رابط لتطبيقنا، تخضع للشروط والسياسات الخاصة بتلك المواقع.\n\nالتغيرات التي تطرأ على سياسة الخصوصية:\n\nتمتلك مرسول حرية التصرف في تحديث سياسة الخصوصية هذه في أي وقت. وعندما نقوم بذلك، على المستخدم مراجعة تاريخ التحديث أسفل هذه الصفحة، وسنقوم بإرسال رسالة على البريد الالكتروني. لذا نحث المستخدمين على مراجعة سياسة الخصوصية بشكل متكرر للاطلاع على أي تغيرات بحيث يكونوا على علم بما نقوم به في سبيل حماية البيانات الشخصية التي نقوم بجمعها. وان يقر ويوافق المستخدم على مسئوليته في مراجعة سياسة الخصوصية هذه بشكل دوري وإدراكه للتعديلات.\n\nالموافقة على شروط الاستخدام:\n\nاستخدامك لهذا التطبيق، يفيد بموافقتك على سياسة الخصوصية المتبعة لدينا والضوابط والشروط التي تحكم استخدام هذا التطبيق. فإذا لم تكن موافقاً على هذه السياسة، يتوجب عليك عدم استخدام تطبيقنا. وإنك تقر بأن استمرار استخدامك للتطبيق بعد إعلان التغييرات التي تطرأ على هذه السياسة أو على ضوابط وشروط استخدام التطبيق سيعتبر بمثابة موافقة منك على هذه التغييرات.\n\nللتواصل معنا:\n\nإذا كان لديك أي أسئلة بشأن سياسة الخصوصية هذه، أو الممارسات بهذا التطبيق، أو تعاملاتك مع التطبيق، يمكنكم التواصل معنا من خلال:  info@mrsool.co\n11-9-2017\n',
                  style: StyleManager.titleStyle12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
