# Generated by Django 3.0.9 on 2020-08-05 04:50

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Chospcode',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('hospcode', models.CharField(max_length=5)),
                ('hosname', models.CharField(max_length=255)),
                ('mu', models.CharField(max_length=2)),
                ('subdistcode', models.CharField(max_length=2)),
                ('ampcode', models.CharField(max_length=2)),
                ('provcode', models.CharField(max_length=2)),
                ('cupcode', models.CharField(max_length=5)),
            ],
        ),
        migrations.CreateModel(
            name='City',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=30)),
            ],
            options={
                'db_table': 'main_city',
            },
        ),
        migrations.CreateModel(
            name='Cmpo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=30)),
                ('population', models.PositiveIntegerField()),
            ],
            options={
                'db_table': 'main_cmpo',
            },
        ),
        migrations.CreateModel(
            name='Country',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=30)),
            ],
            options={
                'db_table': 'main_country',
            },
        ),
        migrations.CreateModel(
            name='Dep',
            fields=[
                ('DEPTID', models.IntegerField(primary_key=True, serialize=False)),
                ('DEPTNAME', models.CharField(max_length=150)),
                ('DepJob', models.CharField(max_length=3)),
                ('DEPTNAMEnew', models.CharField(max_length=150)),
                ('fstaus', models.CharField(max_length=1)),
                ('fstatustime', models.CharField(max_length=1)),
                ('DepJob_old', models.CharField(max_length=3)),
            ],
        ),
        migrations.CreateModel(
            name='Group',
            fields=[
                ('group_id', models.IntegerField(primary_key=True, serialize=False)),
                ('group_name', models.CharField(max_length=150)),
            ],
        ),
        migrations.CreateModel(
            name='Kpi_eval_prov',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('kpi_year', models.DateField(blank=True, null=True)),
                ('hospcode', models.CharField(max_length=5)),
                ('kpi_id', models.CharField(max_length=5)),
                ('ex', models.CharField(max_length=55)),
                ('kpi_eval', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Kpi_eval_rh',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('kpi_year', models.DateField(blank=True, null=True)),
                ('kpi_id', models.CharField(max_length=5)),
                ('ex', models.CharField(max_length=55)),
                ('kpi_eval', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Kpi_hosp',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('hospcode', models.CharField(max_length=5)),
                ('kpi_id', models.CharField(max_length=5)),
            ],
        ),
        migrations.CreateModel(
            name='Kpi_index',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('kpi', models.CharField(max_length=5)),
                ('kpi_name', models.TextField()),
                ('ex', models.CharField(choices=[('pp', 'PP&P Excellence'), ('se', 'Service'), ('pe', 'People Excellence'), ('ge', 'Government Excellence'), ('ncd', 'NCD')], default='pp', max_length=15)),
                ('goal', models.CharField(blank=True, max_length=15, null=True)),
                ('cri_type', models.CharField(blank=True, max_length=55, null=True)),
                ('hdc', models.CharField(blank=True, max_length=15, null=True)),
                ('respon', models.CharField(choices=[('1', 'พัฒนายุทธศาสตร์สาธารณสุข'), ('2', 'บริหารทั่วไป'), ('3', 'ทันตสาธารณสุข'), ('4', 'ควบคุมโรคติดต่อ'), ('5', 'คุ้มครองผู้บริโภคและเภสัชสาธารณสุข'), ('6', 'บริหารทรัพยากรบุคคล'), ('7', 'นิติกร'), ('8', 'พัฒนาคุณภาพและสรุปแบบบริการ'), ('9', 'ส่งเสริมสุขภาพ'), ('10', 'อนามัยสิ่งแวดล้อมและอาชีวอนามัย'), ('11', 'ประกันสุขภาพ'), ('12', 'ควบคุมโรคไม่ติดต่อ สุขภาพจิตและยาเสพติด'), ('13', 'แพทย์แผนไทยและการแพทย์ทางเลือก'), ('14', 'สุขศึกษาประชาสัมพันธ์'), ('15', 'None')], default='1', max_length=255)),
                ('etc', models.TextField(blank=True, null=True)),
                ('kpi_year', models.CharField(default='2020', max_length=4)),
                ('success_type', models.CharField(blank=True, max_length=1, null=True)),
                ('main_kpi_id', models.CharField(blank=True, max_length=15, null=True)),
                ('unit', models.CharField(choices=[('1', '-'), ('2', 'ร้อยละ'), ('3', 'ต่อแสนประชากร'), ('4', 'คน'), ('5', 'แห่ง'), ('6', '%'), ('7', 'เรื่อง'), ('8', 'เขตสุขภาพ'), ('9', 'ฉบับ'), ('10', 'ครอบครัว'), ('11', 'ต่อร้อยประชากร')], default='1', max_length=100)),
                ('static_target', models.CharField(blank=True, max_length=1, null=True)),
                ('kpi_formular', models.CharField(blank=True, max_length=255, null=True)),
                ('kpi_formular_script', models.TextField(blank=True, null=True)),
                ('a', models.TextField(blank=True, null=True)),
                ('b', models.TextField(blank=True, null=True)),
                ('c', models.TextField(blank=True, null=True)),
                ('d', models.TextField(blank=True, null=True)),
                ('e', models.TextField(blank=True, null=True)),
                ('f', models.TextField(blank=True, null=True)),
                ('pa', models.CharField(blank=True, max_length=1, null=True)),
                ('h_kpi', models.CharField(blank=True, max_length=1, null=True)),
                ('active', models.CharField(blank=True, max_length=1, null=True)),
                ('note', models.TextField(blank=True, null=True)),
                ('target', models.TextField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Kpi_input',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('kpi_id', models.CharField(max_length=5)),
                ('hospcode', models.CharField(max_length=5)),
                ('kpi_month', models.DateField()),
                ('kpi_year', models.DateField(blank=True, null=True)),
                ('a1', models.CharField(max_length=155)),
                ('b1', models.CharField(max_length=155)),
                ('a2', models.CharField(max_length=155)),
                ('b2', models.CharField(max_length=155)),
                ('a3', models.CharField(max_length=155)),
                ('b3', models.CharField(max_length=155)),
                ('a4', models.CharField(max_length=155)),
                ('b4', models.CharField(max_length=155)),
                ('a5', models.CharField(max_length=155)),
                ('b5', models.CharField(max_length=155)),
                ('a6', models.CharField(max_length=155)),
                ('b6', models.CharField(max_length=155)),
                ('a7', models.CharField(max_length=155)),
                ('b7', models.CharField(max_length=155)),
                ('a8', models.CharField(max_length=155)),
                ('b8', models.CharField(max_length=155)),
                ('a9', models.CharField(max_length=155)),
                ('b9', models.CharField(max_length=155)),
                ('a10', models.CharField(max_length=155)),
                ('b10', models.CharField(max_length=155)),
                ('a11', models.CharField(max_length=155)),
                ('b11', models.CharField(max_length=155)),
                ('a12', models.CharField(max_length=155)),
                ('b12', models.CharField(max_length=155)),
                ('etc', models.TextField()),
                ('kpi_value', models.CharField(max_length=15)),
                ('d_update', models.DateTimeField(default=django.utils.timezone.now)),
                ('input_date', models.DateTimeField()),
                ('note', models.TextField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Kpi_prov',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ex', models.CharField(max_length=15)),
                ('kpi_id', models.CharField(max_length=5)),
                ('kpi_year', models.DateField(blank=True, null=True)),
                ('hospcode', models.CharField(max_length=5)),
                ('hosname', models.CharField(max_length=255)),
                ('b1', models.DecimalField(decimal_places=2, max_digits=19)),
                ('a1', models.DecimalField(decimal_places=2, max_digits=19)),
                ('p1', models.DecimalField(decimal_places=2, max_digits=19)),
                ('b2', models.DecimalField(decimal_places=2, max_digits=19)),
                ('a2', models.DecimalField(decimal_places=2, max_digits=19)),
                ('p2', models.DecimalField(decimal_places=2, max_digits=19)),
                ('b3', models.DecimalField(decimal_places=2, max_digits=19)),
                ('a3', models.DecimalField(decimal_places=2, max_digits=19)),
                ('p3', models.DecimalField(decimal_places=2, max_digits=19)),
                ('b4', models.DecimalField(decimal_places=2, max_digits=19)),
                ('a4', models.DecimalField(decimal_places=2, max_digits=19)),
                ('p4', models.DecimalField(decimal_places=2, max_digits=19)),
                ('bt', models.DecimalField(decimal_places=2, max_digits=19)),
                ('at', models.DecimalField(decimal_places=2, max_digits=19)),
                ('pt', models.DecimalField(decimal_places=2, max_digits=19)),
                ('goal', models.CharField(max_length=15)),
                ('time', models.DateTimeField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Pk_byear',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('yearprocess', models.DateField(choices=[('2020', '2563')], default='2020', max_length=4)),
            ],
        ),
        migrations.CreateModel(
            name='Reponse_kpi',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, max_length=155)),
            ],
            options={
                'verbose_name': 'กลุ่มงาน',
                'verbose_name_plural': 'กลุ่มงาน',
                'ordering': ('name',),
            },
        ),
        migrations.CreateModel(
            name='Ssj',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, max_length=155)),
                ('hospcode', models.CharField(default='00068', max_length=5)),
            ],
            options={
                'verbose_name': 'จังหวัด',
                'verbose_name_plural': 'จังหวัด',
                'ordering': ('name',),
            },
        ),
        migrations.CreateModel(
            name='Trole',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('code', models.CharField(max_length=15)),
                ('name', models.CharField(max_length=155)),
                ('type_group', models.CharField(max_length=15)),
            ],
        ),
        migrations.CreateModel(
            name='Task',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('kpi_id', models.TextField()),
                ('note', models.TextField()),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
                ('user_hospcode', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.Chospcode')),
            ],
        ),
        migrations.CreateModel(
            name='Profile',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('user_phone', models.CharField(blank=True, max_length=100, null=True)),
                ('ssj', models.CharField(choices=[('00068', 'ชุมพร'), ('00067', 'ระนอง'), ('00066', 'สุราษฎร์ธานี'), ('00062', 'นครศรีธรรมราช'), ('00063', 'กระบี่'), ('00064', 'พังงา'), ('00065', 'ภูเก็ต')], default='00068', max_length=100)),
                ('response', models.CharField(choices=[('1', 'พัฒนายุทธศาสตร์สาธารณสุข'), ('2', 'บริหารทั่วไป'), ('3', 'ทันตสาธารณสุข'), ('4', 'ควบคุมโรคติดต่อ'), ('5', 'คุ้มครองผู้บริโภคและเภสัชสาธารณสุข'), ('6', 'บริหารทรัพยากรบุคคล'), ('7', 'นิติกร'), ('8', 'พัฒนาคุณภาพและสรุปแบบบริการ'), ('9', 'ส่งเสริมสุขภาพ'), ('10', 'อนามัยสิ่งแวดล้อมและอาชีวอนามัย'), ('11', 'ประกันสุขภาพ'), ('12', 'ควบคุมโรคไม่ติดต่อ สุขภาพจิตและยาเสพติด'), ('13', 'แพทย์แผนไทยและการแพทย์ทางเลือก'), ('14', 'สุขศึกษาประชาสัมพันธ์'), ('15', 'None')], default='1', max_length=100)),
                ('image', models.ImageField(default='default.jpg', upload_to='profile_pics')),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Person',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fname', models.CharField(max_length=100)),
                ('lname', models.CharField(max_length=100)),
                ('birth', models.DateField()),
                ('city', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.City')),
                ('country', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.Country')),
            ],
            options={
                'db_table': 'main_person',
            },
        ),
        migrations.CreateModel(
            name='Kpi',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('kpi_code', models.CharField(max_length=15, unique=True)),
                ('kpi_name', models.TextField(blank=True)),
                ('kpi_group', models.CharField(blank=True, max_length=15)),
                ('kpi_group_name', models.CharField(blank=True, max_length=55)),
                ('goal', models.CharField(blank=True, max_length=11)),
                ('goal_descript', models.TextField(blank=True)),
                ('cri_type', models.CharField(blank=True, max_length=15)),
                ('unit', models.CharField(blank=True, max_length=55)),
                ('formular', models.CharField(blank=True, max_length=55)),
                ('formular_type', models.CharField(blank=True, max_length=15)),
                ('descript_a', models.TextField(blank=True)),
                ('descript_b', models.TextField(blank=True)),
                ('response_kpi', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.Reponse_kpi')),
            ],
            options={
                'verbose_name': 'ตัวชี้วัด KPI',
                'verbose_name_plural': 'ตัวชี้วัด KPI',
                'ordering': ('kpi_code',),
            },
        ),
        migrations.CreateModel(
            name='KeyInput',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('year', models.CharField(choices=[('2020', '2563')], default='2020', max_length=6)),
                ('a1', models.CharField(blank=True, max_length=55)),
                ('b1', models.CharField(blank=True, max_length=55)),
                ('a2', models.CharField(blank=True, max_length=55)),
                ('b2', models.CharField(blank=True, max_length=55)),
                ('a3', models.CharField(blank=True, max_length=55)),
                ('b3', models.CharField(blank=True, max_length=55)),
                ('a4', models.CharField(blank=True, max_length=55)),
                ('b4', models.CharField(blank=True, max_length=55)),
                ('a5', models.CharField(blank=True, max_length=55)),
                ('b5', models.CharField(blank=True, max_length=55)),
                ('a6', models.CharField(blank=True, max_length=55)),
                ('b6', models.CharField(blank=True, max_length=55)),
                ('a7', models.CharField(blank=True, max_length=55)),
                ('b7', models.CharField(blank=True, max_length=55)),
                ('a8', models.CharField(blank=True, max_length=55)),
                ('b8', models.CharField(blank=True, max_length=55)),
                ('a9', models.CharField(blank=True, max_length=55)),
                ('b9', models.CharField(blank=True, max_length=55)),
                ('a10', models.CharField(blank=True, max_length=55)),
                ('b10', models.CharField(blank=True, max_length=55)),
                ('a11', models.CharField(blank=True, max_length=55)),
                ('b11', models.CharField(blank=True, max_length=55)),
                ('a12', models.CharField(blank=True, max_length=55)),
                ('b12', models.CharField(blank=True, max_length=55)),
                ('input_update', models.DateTimeField(default=django.utils.timezone.now)),
                ('hospcode', models.ForeignKey(default='00068', on_delete=django.db.models.deletion.CASCADE, to='main.Ssj')),
                ('kpi', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='main.Kpi')),
                ('response', models.ForeignKey(default='1', on_delete=django.db.models.deletion.CASCADE, to='main.Reponse_kpi')),
                ('user', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'บันทึก KPI',
                'verbose_name_plural': 'บันทึก KPI',
                'ordering': ('kpi',),
            },
        ),
        migrations.AddField(
            model_name='city',
            name='country',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.Country'),
        ),
    ]
